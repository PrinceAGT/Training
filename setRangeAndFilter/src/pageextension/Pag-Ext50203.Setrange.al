// pageextension 50203 Setrange extends "Customer Card"
// {
//     actions
//     {
//         addlast(processing){
//             action(showPT){
//                 ApplicationArea = All;
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 trigger OnAction()
//                 var
//                     SalesHeader: Record "Sales Header";
//                 begin
//                     SalesHeader.SetRange("Sell-to Customer No.", Rec."No.");
//                     SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
//                     if SalesHeader.FindFirst() then
//                         Message(
//                             'First Order No: %1 \Order Date: %2',
//                             SalesHeader."No.",
//                             SalesHeader."Order Date")
//                     else
//                         Message('No Sales Orders');
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }