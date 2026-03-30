pageextension 50223 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Shipment Date")
        {
            field("Delivery PT"; Rec."Delivery PT")
            {
                ApplicationArea = All;
            }
        }
    }
}