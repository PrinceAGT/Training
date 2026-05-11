page 50304 "Evaluation comment Log PT"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Evaluation Comment Log PT";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Entry No."; Rec."Entry No.")
                {

                }
                field("Evaluation No."; Rec."Evaluation No.")
                {

                }
                field(Comments; Rec.Comments)
                {

                }
                field("Created By"; Rec."Created By")
                {

                }
                field("Created Date Time"; Rec."Created Date Time")
                {

                }
            }
        }
    }

}