// pageextension 50215 ItemListExtPT extends "Item List"
// {
//     actions
//     {
//         addlast(processing)
//         {
//             action(CheckInventoryLevels)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Check InventoryPT';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 var
//                     ItemRec: Record Item;
//                     HighestInv: Decimal;
//                     LowestInv: Decimal;
//                     HighestItemNo: Code[20];
//                     LowestItemNo: Code[20];
//                     HighestItemName: Text[100];
//                     LowestItemName: Text[100];
//                 begin

//                     ItemRec.SetRange(Blocked, false);

//                     if ItemRec.FindSet() then
//                         repeat
//                             ItemRec.CalcFields(Inventory);

//                             if ItemRec.Inventory > HighestInv then begin
//                                 HighestInv := ItemRec.Inventory;
//                                 HighestItemNo := ItemRec."No.";
//                                 HighestItemName := ItemRec.Description;
//                             end;

//                             if (LowestInv = 0) or (ItemRec.Inventory < LowestInv) then begin
//                                 LowestInv := ItemRec.Inventory;
//                                 LowestItemNo := ItemRec."No.";
//                                 LowestItemName := ItemRec.Description;
//                             end;

//                         until ItemRec.Next() = 0;

//                     Message(
//                     'Highest Inventory Item : %1\ : %2\Lowest Inventory Item : %3\ : %4',
//                     HighestItemNo + ' - ' + HighestItemName,
//                     HighestInv,
//                     LowestItemNo + ' - ' + LowestItemName,
//                     LowestInv);

//                 end;
//             }
//         }
//     }
// }