pageextension 50222 PostedSalesInvPageExt extends "Posted Sales Invoice"
{
    layout
    {
        addLast(General)
        {
            field(MyCustomFieldPT; Rec.MyCustomFieldPT)
            {
                ApplicationArea = All;
            }
        }
    }
}