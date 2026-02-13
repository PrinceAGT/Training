page 50135 DepartmentPTPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DepartmentPT;
    
    layout
    {
        area(Content)
        {
            repeater(Department)
            {
                field("Dept Code";Rec."Dept Code")
                {
                    Caption = 'DeptCode';
                }
                field("Total Salary";Rec."Total Salary")
                {
                    Caption = 'ToatalSalary';
                }
                field(EmpCount;Rec.EmpCount)
                {
                    Caption = 'EmpCount';
                }
                field(AvgSalary;Rec.AvgSalary)
                {
                    Caption = 'AvgSalary';
                }
                field(MaxSalary;Rec.MaxSalary)
                {
                    Caption = 'MaxSalary';
                }
                field(MinSalary;Rec.MinSalary)
                {
                    Caption = 'MinSalary';
                }
            }
        }
    }   
}