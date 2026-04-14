// // Throwing an error and restricting posting when the  quantity entered for an item is greater than the quantity in hand for that particular item in inventory.

// codeunit 50239 throwerroeifQTy31
// {
//     [EventSubscriber(ObjectType::Table, database::"Sales Line", OnAfterValidateEvent, 'quantity', true, true)]
//     local procedure OnAfterValidateEvent(var Rec: Record "Sales Line")
//     var
//         item: Record Item;
//         availabeQTY: Integer;

//     begin
//         if rec.Type = rec.type::Item then begin
//             if item.get(rec."No.") then begin
//                 item.CalcFields(Inventory);
//                 availabeQTY := item.Inventory;

//                 if rec.Quantity > availabeQTY then begin
//                     Error('Item quantity is greater than availabe quantity');
//                 end;
//             end;
//         end;
//     end;
// }