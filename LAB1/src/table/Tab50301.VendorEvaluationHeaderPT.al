table 50301 "Vendor Evaluation Header PT"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Evaluation No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            trigger OnValidate()
            var
                ven: Record Vendor;
            begin
                if ven.Get("Vendor No.") then begin
                    rec."Vendor Name" := ven.Name;
                end
            end;

        }
        field(3; "Vendor Name"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Evaluation Month"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Final Score"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Rating Status"; Option)
        {
            OptionMembers = Excellent,Good,Average,Poor;

        }
        field(7; "Status"; Option)
        {
            OptionMembers = Open,Completed;


        }


    }

    keys
    {
        key(Key1; "Evaluation No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}