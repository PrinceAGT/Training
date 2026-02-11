table 50111 Student
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;No; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No';
            AutoIncrement = true;
            
        }

         field(2;"Student Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Name';
            
        }

         field(3;"Student Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Id';
           
        }

         field(4;"Student Address"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'No';
            
        }
    }
    
    keys
    {
        key(Key1; No)
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
        Message('Row added');
    end;
    
    trigger OnModify()
    begin
        Message('Row modified');
    end;
    
    trigger OnDelete()
    begin
        Message('Row deleted');
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}