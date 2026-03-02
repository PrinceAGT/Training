table 50170 ServiceAssignmentPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Assignment No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                recCustomer: Record Customer;
            begin
                if recCustomer.get("Customer No.") then begin
                    "Customer Name" := recCustomer.Name;
                end;
            end;
        }
        field(3; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Service Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if ("Service Cost" < 0) then begin
                    Error('Negative Value not accepted.');
                end;
            end;
        }
        field(5; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,Released,Completed;
        }
        field(6; "Created Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Created By"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Modified Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Modified By"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Assignment No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Created Date" := Today;
        "Created By" := UserId;
        Status := Status::Open;
    end;

    trigger OnModify()
    begin
        "Modified Date" := Today;
        "Modified By" := UserId;
    end;

    trigger OnDelete()
    begin
        if(Status = Status::Completed) or (Status = Status::Released) then begin
            Error('Cannot delete customer with completed or released Status.');
        end;
    end;

    trigger OnRename()
    begin

    end;

}