table 50135 DepartmentPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Dept Code"; Code[10]) {
            DataClassification = ToBeClassified;
         }

        field(2; "Total Salary"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum(EmpPT.Salary WHERE("Dept Code" = field("Dept Code")));
        }
        field(3; "EmpCount"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(EmpPT where("Dept Code" = field("Dept Code")));
        }
        field(4; AvgSalary; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(EmpPT.Salary where("Dept Code" = field("Dept Code")));
        }
        field(5; MaxSalary; Decimal) {
            FieldClass = FlowField;
            CalcFormula = max(EmpPT.Salary where("Dept Code" = field("Dept Code")));
        }
        field(6; MinSalary; Decimal) {
            FieldClass = FlowField;
            CalcFormula = min(EmpPT.Salary where("Dept Code" = field("Dept Code")));
        }
    }

    keys
    {
        key(PK; "Dept Code")
        {
            Clustered = true;
        }
    }
}
