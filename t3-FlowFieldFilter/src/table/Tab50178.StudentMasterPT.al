table 50178 StudentMasterPT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Student No."; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = StudentPaymentPT;
             trigger OnValidate()
             var
                recStudent : record StudentPaymentPT;
            begin
                if recStudent.get("Student No.") then begin
                    "Student Name" := recStudent."Student Name";
                end;
            end;
        }
        field(2; "Student Name"; Text[100])
        {
            DataClassification = ToBeClassified;
           
        }
        field(3; "Total fee"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(StudentPaymentPT.Amount where("Student No." = field("Student No."), "payment Date" = field("Date of Payment")
            )); 

        }
        field(4; "Total Payment"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(StudentPaymentPT where("Student No." = field("Student No."), "payment Date" = field("Date of Payment")));
        }
        field(5; "Last Payment Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(StudentPaymentPT.Amount where("Student No." = field("Student No.")));
        }
        field(6; "Date of Payment"; Date)
        {
            FieldClass = FlowFilter;
        }
    }
    
    keys
    {
        key(Key1; "Student No.")
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