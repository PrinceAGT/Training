// // Throwing an error and restricting posting when the  quantity entered for an item is greater than the quantity in hand for that particular item in inventory.

// codeunit 50239 throwerroeifQTy31
// {
//     [EventSubscriber(ObjectType::Codeunit, codeunit::"Sales-Post", OnbeforePostSalesDoc, '', true, true)]
//     local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         item: Record Item;
//         availabeQTY: Integer;
//         salesLine: Record "Sales Line";

//     begin
//         if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
//             exit;
//         salesLine.Reset();
//         salesLine.SetRange("Document Type", SalesHeader."Document Type");
//         salesLine.SetRange("Document No.", SalesHeader."No.");
//         if salesLine.FindSet() then
//             repeat
//                 if SalesLine.Type = SalesLine.Type::Item then begin
//                     if Item.Get(SalesLine."No.") then begin
//                         Item.CalcFields(Inventory);
//                         availabeQTY := Item.Inventory;

//                         if salesLine.Quantity > availabeQTY then begin
//                             Error('Posting cannot be done as quantity is greater than available quantity ');
//                         end;
//                     end;
//                 end;
//             until salesLine.Next() = 0;


//     end;
// }