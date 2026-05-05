report 50104 PurchasePT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './purchasePT.rdl';


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Month; FORMAT("Document Date", 0, '<Month Text> <Year4>'))
            {

            }
            column(Purchase_order; "No.")
            {

            }
        }
    }
}