page 50151 EnrollmentListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EnrollmentPT;
    
    layout
    {
        area(Content)
        {
            repeater(EnrollMent)
            {
                field("Student No";Rec."Student No")
                {
                    ApplicationArea = All;
                }
                field("Course code";Rec."Course code")
                {
                    ApplicationArea = All;
                }
                field("Enrollment Date";Rec."Enrollment Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}