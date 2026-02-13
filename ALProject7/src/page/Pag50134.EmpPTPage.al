page 50134 EmpPTPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EmpPT;
    
    layout
    {
        area(Content)
        {
            repeater(employeePT)
            {
                field("Employee No";Rec."Employee No")
                {
                    Caption = 'Employee No';
                }
                field(Name;Rec.Name)
                {
                    Caption = 'Name';
                }
                field("Dept Code";Rec."Dept Code")
                {
                    Caption = 'Dept Code';
                }
                field(Salary;Rec.Salary)
                {
                    Caption = 'Salary';
                }
            }
        }
    }
}