page 50141 SalesOrderLinesPT
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = salesLinesPT;
    
    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(No;Rec.No) {
                    ApplicationArea = All;
                }
                field(LineNo;Rec.LineNo) {
                    ApplicationArea = All;
                }
                field(Description;Rec.Description) {
                    ApplicationArea = All;
                }
                field(Quantity;Rec.Quantity) {
                    ApplicationArea = All;
                }
                field(unitPrice;Rec.unitPrice) {
                    ApplicationArea = All;
                }
            }
        }
    }
}