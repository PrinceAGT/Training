report 50108 CustomerItemSales
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerItemSales.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.") { }
            column(CustomerName; Name) { }
            column(ComapanyName; COMPANYNAME) { }
            column(Customer___Sales; Customer___Sales) { }
            // column(Customer_Total; Customer_Total) { }

            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");
                DataItemTableView = where(Type = const(Item));

                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Amount; Amount) { }
            }
        }
    }

    var
        Customer___Sales: Label 'Customer - Item Sales';
        Customer_Total: Label 'Customer_Total';
}