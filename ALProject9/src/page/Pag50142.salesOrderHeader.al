page 50142 salesOrderHeader
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = salesHeaderPT;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(No;Rec.No) {
                    ApplicationArea = All;
                }
                field("Customer Name";Rec."Customer Name") {
                    ApplicationArea = All;
                }
                field("Order Date";Rec."Order Date") {
                    ApplicationArea = All;
                }
            }

            part(Lines; "SalesOrderLinesPT") 
            {
                ApplicationArea = All;
                SubPageLink = "No" = field(No);
            }
        }
        }
    }