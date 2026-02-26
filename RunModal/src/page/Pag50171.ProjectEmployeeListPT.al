page 50171 ProjectEmployeeListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ProjectEmloyeePT;
    CardPageId = ProjectEmployeeCardPT;
    
    layout
    {
        area(Content)
        {
            repeater(Employee)
            {
                field("Employee No.";Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
                field("Employee Name";Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Project No";Rec."Project No")
                {
                    ApplicationArea = All;
                }
                field("Project Name";Rec."Project Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}