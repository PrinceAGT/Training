pageextension 50229 purchaseLine extends "Purchase Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field(MyCustomFieldPT; Rec.MyCustomFieldPT)
            {
                ApplicationArea = All;
            }
        }
    }
}