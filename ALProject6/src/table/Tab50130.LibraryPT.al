table 50130 LibraryPT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"NO"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No';
            AutoIncrement = true;
            
        }
        field(2;"BookID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'BookID';
            trigger OnValidate()
            begin
                 if ("BookID" < 1000) or ("BookID" > 9999) then
            Error('BookID must be a 4-digit number between 1000 and 9999.');

                if ("BookID" mod 10 = 0) then 
            Error('BookID cannot end with zero');

                if ("BookID" mod 1111 = 0) then 
            Error('Special BookID entered');

            end;
            
        }
        field(3;"BookTitle"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'BookTitle';
            
        }
    }
    
    keys
    {
        key(Key1; NO)
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