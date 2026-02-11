page 50111 Student
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;

    
    layout
    {
        area(Content)
        {
            repeater(StudentGroup)
            {
                field("Student Name";Rec."Student Name")
                {
                    Caption = 'Student Name';
                }
                field("Student Id";Rec."Student Id")
                {
                     Caption = 'Student Id';
                }
                field("Student Address";Rec."Student Address")
                {
                        Caption = 'Student Address';
                }
            }
        }
    }
}