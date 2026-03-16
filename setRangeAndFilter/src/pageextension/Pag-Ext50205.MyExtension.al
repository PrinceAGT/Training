// pageextension 50205 MyExtension extends "Customer List"
// {
    
//     actions
//     {
//         addlast(processing) {
//             action(filter) {
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 Caption = 'FilterPT';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     recCustList: record Customer;
//                 begin
//                     recCustList.SetRange("Date Filter",Today);
//                     if recCustList.FindLast() then begin
//                         Message('Latest customer created today is:\Customer No:%1\Name:%2',recCustList."No.",recCustList.Name);
//                     end
//                     else 
//                     begin
//                         Message('no customer created today');
//                     end;
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }