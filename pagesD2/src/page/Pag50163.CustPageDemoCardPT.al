page 50163 CustPageDemoCardPT
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerPageDemoPT;
    
    layout
    {
        area(Content)
        {
            group(Customer)
            {
                field("Customer No";Rec."Customer No")
                {
                    ApplicationArea = All;
                    Caption = 'NO';
                }
                field("Customer Name";Rec."Customer Name") {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Product Code";Rec."Product Code") {
                    ApplicationArea = All;
                    Caption = 'code';
                }
            }
        }
    }
}