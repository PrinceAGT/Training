pageextension 50230 ItemJnlPageExt extends "Item Journal"
{
    layout
    {
        addafter("Document No.")
        {
            field(MyCustomFieldPT; Rec.MyCustomFieldPT)
            {
                ApplicationArea = All;
            }
        }
    }
}