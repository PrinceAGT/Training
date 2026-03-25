pageextension 50223 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Document No.")
        {
            field("Delivery PT"; Rec."Delivery PT")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}