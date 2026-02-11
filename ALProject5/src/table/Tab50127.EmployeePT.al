table 50127 EmployeePT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Employee ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee ID';
        }
        field(2;"Employee Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee Name';
        }
        field(3;"Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(4;"Task Completion Hour"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Completion Hour';
        }
        field(5;"Completed Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Completed Date';
        }
        
    }
    
    keys
    {
        key(Key1; "Employee ID")
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
