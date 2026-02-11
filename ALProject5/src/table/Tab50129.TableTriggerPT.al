




table 50129 TableTriggerPT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Task ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Taks ID';
        }
        field(2;"Task Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Taks Name';
        }
        field(4;"Creation Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Creation Date';
        }
        field(5;"Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = Open,Closed,Modified;


        }
    }
    
    keys
    {
        key(Key1; "Task ID")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        "Creation Date" := Today();
        Status := Status::Open;
    end;
    
    trigger OnModify()
    begin
        Status := Status::Modified;
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}