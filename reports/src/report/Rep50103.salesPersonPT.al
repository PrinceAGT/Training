report 50103 salesPersonPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesPersonPT.rdl';

    dataset
    {
        dataitem(Salesperson; "Salesperson/Purchaser")
        {
            column(salesPerson_Code; Code) { }
            column(SalesPerson_Name; Name) { }

            dataitem(CustLedgEntry; "Cust. Ledger Entry")
            {
                DataItemLink = "Salesperson Code" = field(Code);
                DataItemTableView = where("Document Type" = const(Invoice));

                column(Customer_Name; "Customer Name") { }
                column(Document_No; "Document No.") { }
                column(Line_Amount; Amount) { }
            }
        }
    }
}