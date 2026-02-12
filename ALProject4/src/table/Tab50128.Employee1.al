table 50128 Employee1
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Employee No"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'No';
            
        }
        field(2;"Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
            
        }
        field(3;"Department Code"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Code';
            
        }
        field(4;"Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Salary';

            trigger OnValidate()
            begin
                if Salary < 10000 then
                    Error('Salary must be greater than 10000.');
                
            end;
            
        }
        field(5;"Joining Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Joining Date';
            
        }
        field(6;Status;Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            
        }
    }
    
    keys
    {
        key(Key1; "Employee No")
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
        Status := true;
        if "Joining Date" = 0D then
            "Joining Date" := Today();
    end;
   
    
    trigger OnDelete()
    begin
        if Status = true then
            Error('Active Employee cannot be deleted.');
        else
            Message('Employee deleted successfully');
    end;
    
    
}

