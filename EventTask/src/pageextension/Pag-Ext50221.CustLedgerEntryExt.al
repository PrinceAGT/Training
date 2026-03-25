pageextension 50221 CustLedgerEntryExt extends "Customer Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("MyCustomFieldPT"; Rec."MyCustomFieldPT")
            {
                ApplicationArea = All;
                Caption = 'My Custom FieldPT';
            }
        }
    }
}
