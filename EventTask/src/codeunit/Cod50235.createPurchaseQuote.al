// // create a purchase quote When Sales order is released.
// codeunit 50235 createPurchaseQuote
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", OnAfterReleaseSalesDoc, '', true, true)]
//     local procedure OnAfterReleaseSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         purchaseHeader: Record "Purchase Header";
//         purchaseLine: Record "Purchase Line";
//         salesline: Record "Sales Line";
//         line: Integer;
//     begin
//         purchaseHeader.Init();
//         purchaseHeader."Document Type" := purchaseHeader."Document Type"::Quote;
//         purchaseHeader.validate("Buy-from Vendor No.", 'V00090');
//         purchaseHeader.Insert(true);

//         salesline.Reset();
//         salesline.SetRange("Document Type", SalesHeader."Document Type");
//         salesline.SetRange("Document No.", SalesHeader."No.");

//         if salesline.FindSet() then begin
//             line := 10000;
//             repeat
//                 if salesline.Type = salesline.Type::Item then begin
//                     purchaseLine.Init();
//                     purchaseLine."Document Type" := purchaseHeader."Document Type";
//                     purchaseLine."Document No." := purchaseHeader."No.";
//                     purchaseLine."Line No." := line;
//                     purchaseLine.Insert(true);

//                     purchaseLine.Validate(Type, purchaseLine.Type::Item);
//                     purchaseLine.validate("No.", salesline."No.");
//                     purchaseLine.Validate(Quantity, salesline.Quantity);

//                     line += 10000;
//                 end;
//             until salesline.next() = 0
//         end;
//     end;
// }