// // Creating a purchase order when the quantity entered in a sales order's line for an item exceeds the quantity in inventory for that item .

// codeunit 50236 creationOfPurchaseorder
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", OnBeforeConfirmPost, '', true, true)]
//     local procedure OnBeforeConfirmPost(var SalesHeader: Record "Sales Header")
//     var
//         salesLine: record "Sales Line";
//         purchaseHeader: record "Purchase Header";
//         purchaseLine: record "Purchase Line";
//         item: record Item;
//         purchasePost: Codeunit "Purch.-Post";

//     begin
//         salesLine.SetRange("Document Type", SalesHeader."Document Type");
//         salesLine.SetRange("Document No.", SalesHeader."No.");

//         if salesLine.FindSet() then
//             repeat
//                 if item.Get(salesLine."No.") then begin
//                     if item.Inventory < salesLine.Quantity then begin
//                         purchaseHeader.Init();
//                         purchaseHeader.validate("Document Type", purchaseHeader."Document Type"::Order);
//                         purchaseHeader.validate("Buy-from Vendor No.", item."Vendor No.");
//                         purchaseHeader.validate("Vendor Invoice No.", purchaseHeader."No.");
//                         purchaseHeader.Insert(true);

//                         purchaseLine.Init();
//                         purchaseLine.Validate("Document Type", purchaseHeader."Document Type");
//                         purchaseLine.Validate("Document No.", purchaseHeader."No.");
//                         purchaseLine.Validate(Type, purchaseLine.Type::Item);
//                         purchaseLine.Validate("No.", salesLine."No.");
//                         purchaseLine.Validate(Quantity, salesLine.Quantity - item.Inventory);
//                         purchaseLine.Insert(true);
//                         purchasePost.run(purchaseHeader);
//                         Message('purchase order has been created succesfully');
//                     end;
//                 end;
//             until salesLine.next() = 0
//     end;
// }