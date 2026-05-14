page 50305 "Inventory Adjustment List PT"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Inventory Adjustment PT";
    CardPageId = "Inventory Adjustment Doc PT";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Adjustment No."; Rec."Adjustment No.")
                {

                }
                field("Location Code"; Rec."Location Code")
                {

                }
                field(Status; Rec.Status)
                {

                }
                field("Request Date"; Rec."Request Date")
                {

                }
            }
        }
    }
}