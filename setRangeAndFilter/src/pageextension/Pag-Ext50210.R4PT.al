// pageextension 50210  R4PT extends "Sales Quotes"
// {
   
    
//     actions
//     {
//         addlast(processing) {
//             action(GetLastSales) {
//                 ApplicationArea = All;
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 Caption = 'Get Last Sales';

//                 trigger OnAction()
//                 var
//                     recSales: Record "Sales Header";
//                 begin
//                     recSales.SetCurrentKey("No.");
//                     if recSales.FindLast() then begin
//                         Message('The last available sales document number is :- %1', recSales."No.");
//                     end
//                     else
//                     begin
//                          Message('No document is available');
//                     end;
//                 end;
//             }
//         }
//     }
// }