tableextension 50104 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(50103; "MyCustomFieldPT"; Code[20])
        {
            Caption = 'My Custom FieldPT';
        }
        field(50104; "Delivery PT"; code[20])
        {
            caption = 'Delivery PT';
        }
    }
}