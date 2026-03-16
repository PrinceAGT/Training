// pageextension 50206 CUSTPT extends "Customer Card"
// {

//     actions
//     {
//         addlast(processing)
//         {
//             action(TotalSalesPT)
//             {
//                 ApplicationArea = All;
//                 Promoted = true;
//                 PromotedCategory = Process;
            
//                 trigger OnAction()
//                 var
//                     recLedger : Record "Cust. Ledger Entry";
//                     totalSalesAmount : Decimal;
//                 begin
//                     recLedger.SetRange("Customer No.", Rec."No.");
//                     recLedger.SetRange("Document Type",recLedger."Document Type"::Invoice);
//                     recLedger.CalcSums("Sales (LCY)");
//                     totalSalesAmount := recLedger."Sales (LCY)";
//                     Message('Total Sales Amount = %1',totalSalesAmount);
                    
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }