// pageextension 50216 SalesOrderListExt extends "Sales Order List"
// {
//     actions
//     {
//         addlast(processing)
//         {
//             action(orderWithFuturePosting)
//             {
//                 ApplicationArea = All;
//                 Caption = 'order with Future Posting PT';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 var
//                     SalesHeader: Record "Sales Header";
//                     CountOrders: Integer;
//                     LastOrderNo: Code[20];
//                 begin


//                     SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);

//                     if SalesHeader.FindSet() then
//                         repeat
//                             if SalesHeader."Posting Date" > WorkDate() then begin
//                                 CountOrders += 1;
//                                 LastOrderNo := SalesHeader."No.";
//                             end;
//                         until SalesHeader.Next() = 0;

//                     Message(
//                     'Orders with Future Posting Date : %1\Last Order No : %2',
//                     CountOrders,
//                     LastOrderNo);

//                 end;
//             }
//         }
//     }
// }