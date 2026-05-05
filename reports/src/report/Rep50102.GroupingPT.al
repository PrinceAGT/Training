report 50102 GroupingPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './GroupingPT2.rdl';

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            DataItemTableView =
                SORTING("Customer No.")
                WHERE(Open = CONST(true));

            column(Customer_No_; "Customer No.")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(Amount__LCY_; "Amount (LCY)")
            {

            }
        }
    }


}

