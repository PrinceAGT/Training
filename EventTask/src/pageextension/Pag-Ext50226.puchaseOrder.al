pageextension 50226 puchaseOrder extends "Purchase Order"
{
    layout
    {
        addlast(General)
        {
            field("MyCustomFieldPT"; Rec."MyCustomFieldPT")
            {
                ApplicationArea = All;
                Caption = 'My Custom FieldPT';
            }
        }
    }
}