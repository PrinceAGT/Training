page 50307 "Inventory Adjustment LinePT"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Inventory Adjustment Line PT";

    layout
    {
        area(content)
        {
            repeater(Lines)
            {
                field("Adjustment No."; Rec."Adjustment No.")
                {

                }
                field("Line No."; Rec."Line No.")
                {

                }
                field("Item No."; Rec."Item No.")
                {

                }
                field(Description; Rec.Description)
                {

                }
                field(Quantity; Rec.Quantity)
                {

                }
                field("Unit Cost"; Rec."Unit Cost")
                {

                }
                field("Total Cost"; Rec."Total Cost")
                {

                }
            }
        }
    }
}