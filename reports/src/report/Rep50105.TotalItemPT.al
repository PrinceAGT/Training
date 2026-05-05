report 50105 TotalItemPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './totalQTY.rdl';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = where("Location Code" = filter('EAST' | 'WEST' | 'MAIN'));

            column(Item_No_; "Item No.")
            {
            }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = field("Item No.");
                column(Description; Description)
                {
                }
                column(Inventory; Inventory) { }

            }

            column(Location_Code; "Location Code")
            {

            }

            column(Remaining_Quantity; "Remaining Quantity")
            {
            }

            column(TotalSales; TotalSales) { }
            column(TotalPurchase; TotalPurchase) { }
            trigger OnAfterGetRecord()
            var
                item: Record "Item Ledger Entry";
            begin
                Clear(TotalSales);
                Clear(TotalPurchase);

                item.Reset();
                item.SetRange("Item No.", "Item No.");

                if item.FindSet() then
                    repeat

                        if item."Entry Type" = item."Entry Type"::Sale then
                            TotalSales += Abs(item.Quantity);

                        if item."Entry Type" = item."Entry Type"::Purchase then
                            TotalPurchase += item.Quantity;

                    until item.Next() = 0;
            end;



        }
    }
    var
        TotalSales: Decimal;
        TotalPurchase: Decimal;
        Customer___Sales: Label 'Customer - Sales List';
        Total_Reported_Amount: Label 'Total Reported Amount of Sales (LCY)';
        Cutomer_Total: Label 'Customer_Total';
}