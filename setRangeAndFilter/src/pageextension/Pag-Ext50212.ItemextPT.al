// pageextension 50212 ItemextPT extends "Item List"
// {
//     layout
//     {
//         // Add changes to page layout here
//     }
    
//     actions
//     {
//         addlast(processing)
//         {
//             action(InventoryItemPT)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Inventory Item PT';
//                 Promoted = true;
//                 PromotedCategory = process;

//                 trigger OnAction()
//                 var
//                     ItemRec: Record Item;
//                     ItemCount: Integer;
//                     LowestInventory: Decimal;
//                     LowestItemNo: Code[20];
//                 begin
//                     ItemRec.SetRange(Blocked, false);
//                     ItemCount:= 0;
//                     LowestInventory := 0;


//                     if ItemRec.FindSet() then 
//                         repeat
//                         if ItemRec.Inventory < 5 then begin
//                         ItemCount := ItemCount + 1;
//                         end;
                        
//                         if (ItemRec.Inventory < LowestInventory ) then 
//                         begin
//                             LowestInventory := ItemRec.Inventory;
//                             LowestItemNo := ItemRec."No.";
//                         end;

//                         until ItemRec.Next() = 0;

//                         Message('Total low inventory items : %1\ the lowest inventory itmem is:%2', ItemCount, ItemRec."No.");
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }