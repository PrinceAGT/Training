// pageextension 50204 ItemPT extends "Item List"
// {
    
//     actions
//     {
//         addlast(processing)
//         {
//             action(Filter){
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 Caption = 'PTFilter';
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var
//                     recItem: Record Item;
//                     description : text;
//                 begin
//                     recItem.SetRange(Blocked, false);
//                     recItem.SetCurrentKey("Unit Price");
                    
                    
//                     if recItem.FindFirst() then begin
//                         description := UpperCase(recItem.Description);
//                         Message('Cheapest Item :-\Item no - %1\Unit Price - %2\Description - %3',recItem."No.",recItem."Unit Price",description);
//                     end;
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }