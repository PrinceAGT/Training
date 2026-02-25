table 50155 CampusTablePT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Campus ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "City"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "IsActive"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(5;"Capacity";Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "CurrentEnrollment"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; "Campus ID")
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