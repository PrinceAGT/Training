page 50149 StudentListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentPT;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Student No";Rec."Student No")
                {
                    ApplicationArea = All;
                }
                field("Student Name";Rec."Student Name")
                {
                    ApplicationArea = All;
                }
                field(Status;Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(DOB;Rec.DOB)
                {
                    ApplicationArea = All;
                }
                field(Age;Rec.Age)
                {
                    ApplicationArea = All;
                }
                field("Course code";Rec."Course code")
                {
                    ApplicationArea = All;
                }
                field("Total Course";Rec."Total Course")
                {
                    ApplicationArea = All;
                }
                // field("Date Filter";Rec."Date Filter")
                // {
                //     ApplicationArea = All;
                // }

            }
        }
    }
}