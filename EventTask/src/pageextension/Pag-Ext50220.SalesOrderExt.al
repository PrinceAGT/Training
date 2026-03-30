pageextension 50220 SalesOrderExt extends "Sales Order"
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
