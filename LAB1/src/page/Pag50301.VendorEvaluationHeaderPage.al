page 50301 "Vendor Evaluation Header Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vendor Evaluation Header PT";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Evaluation No."; Rec."Evaluation No.")
                {

                }
                field("Vendor No."; Rec."Vendor No.")
                {

                }
                field("Vendor Name"; Rec."Vendor Name")
                {

                }
                field("Evaluation Month"; Rec."Evaluation Month")
                {

                }
                field("Final Score"; Rec."Final Score")
                {

                }
                field("Rating Status"; Rec."Rating Status")
                {

                }
                field(Status; Rec.Status)
                {

                }

            }
        }
    }


}