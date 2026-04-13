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
//         line: Integer;

//     begin
//         purchaseHeader.Init();
//         purchaseHeader."Document Type" := purchaseHeader."Document Type"::Order;
//         purchaseHeader.validate("Buy-from Vendor No.", 'V00090');
//         purchaseHeader.Insert(true);
//         purchaseHeader.validate("Vendor Invoice No.", purchaseHeader."No.");
//         salesLine.Reset();
//         salesLine.SetRange("Document Type", SalesHeader."Document Type");
//         salesLine.SetRange("Document No.", SalesHeader."No.");

//         if salesLine.FindSet() then
//             line := 10000;
//         repeat
//             if item.Get(salesLine."No.") then begin
//                 if item.Inventory < salesLine.Quantity then begin
//                     purchaseLine.Init();
//                     purchaseLine.Validate("Document Type", purchaseHeader."Document Type");
//                     purchaseLine.Validate("Document No.", purchaseHeader."No.");
//                     purchaseLine."Line No." := line;
//                     purchaseLine.Insert(true);
//                     purchaseLine.Validate(Type, purchaseLine.Type::Item);
//                     purchaseLine.Validate("No.", salesLine."No.");
//                     purchaseLine.Validate(Quantity, salesLine.Quantity - item.Inventory);
//                     line += 10000;
//                 end;
//             end;
//         until salesLine.next() = 0;
//         Message('purchase order has been created succesfully');
//     end;
// }