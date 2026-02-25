table 50156 StudentCampusPT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "City"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "CampusID"; Code[20])
        {
            TableRelation = CampusTablePT."Campus ID";
        }
    }
    
    keys
    {
        key(Key1; "Student ID")
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