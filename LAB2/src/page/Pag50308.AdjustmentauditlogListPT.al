page 50308 "Adjustment audit logList PT"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Adjustment Audit Log PT";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {

                }
                field("Adjustment No."; Rec."Adjustment No.")
                {

                }
                field("Action Type"; Rec."Action Type")
                {

                }
                field("User ID"; Rec."User ID")
                {

                }
                field("Action Date Time"; Rec."Action Date Time")
                {

                }
            }
        }
    }
}