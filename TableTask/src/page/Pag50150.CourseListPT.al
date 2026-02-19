page 50150 CourseListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CoursePT ;
    
    layout
    {
        area(Content)
        {
            repeater(Course)
            {
                field("Course code";Rec."Course code")
                {
                    ApplicationArea = All;
                }
                field("Course name";Rec."Course name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}