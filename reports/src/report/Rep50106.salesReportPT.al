report 50106 salesReportPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './custSales.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.") { }
            column(company_name; COMPANYNAME) { }


            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");

                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Amount; Amount) { }
            }
        }
    }

    var
        Customer___Sales: Label 'Customer - Sales Report';
        Total_Reported_Amount: Label 'Total Reported Amount ';
        Cutomer_Total: Label 'Customer_Total';


}