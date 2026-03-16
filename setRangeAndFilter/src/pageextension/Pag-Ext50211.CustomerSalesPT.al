// pageextension 50211 CustomerSalesPT extends "Customer List"
// {
//     actions
//     {
//         addlast(processing)
//         {
//             action(HighestSalesToday)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Find Highest Sales';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 var
//                     CustLedg: Record "Cust. Ledger Entry";
//                     Cust: Record Customer;
//                     TotalSales: Decimal;
//                     HighestSales: Decimal;
//                     HighestCustNo: Code[20];
//                     HighestCustName: Text[100];
//                 begin

//                     CustLedg.SetRange("Document Type", CustLedg."Document Type"::Invoice);
//                     CustLedg.SetRange("Posting Date", Today);

//                     if CustLedg.FindSet() then
//                         repeat
//                            TotalSales := CustLedg."Sales (LCY)";
//                            if TotalSales > HighestSales then begin
//                             HighestSales := TotalSales;
//                             HighestCustNo := CustLedg."Customer No.";
//                             HighestCustName := CustLedg."Customer Name";
//                            end;

//                         until CustLedg.Next() = 0;

//                     Message(
//                     'Customer With Highest Sales Today\Customer No : %1\Customer Name : %2\Total Sales : %3',
//                     HighestCustNo,
//                     HighestCustName,
//                     HighestSales);

//                 end;
//             }
//         }
//     }
// }