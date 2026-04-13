// //Add two custom fields to the Item card. After posting a Sales or Purchase order, update these fields with the Unit Price from the posted document lines.

// codeunit 50238 quest20
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnAfterPostSalesLine, '', true, true)]
//     local procedure OnAfterPostSalesLine(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
//     var
//         item: Record item;
//     begin
//         if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then begin
//             SalesLine.Reset();
//             SalesLine.SetRange("Document Type", SalesHeader."Document Type");
//             SalesLine.SetRange("Document No.", SalesHeader."No.");
//             if SalesLine.FindSet() then
//                 repeat
//                     if item.get(SalesLine."No.") then begin
//                         item.MyCustField1PT := SalesLine."Unit Price";
//                         item.Modify();
//                     end;
//                 until SalesLine.Next() = 0;
//         end;
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", OnAfterPostPurchLine, '', true, true)]
//     local procedure OnAfterPostPurchLine(var PurchaseHeader: Record "Purchase Header"; var PurchaseLine: Record "Purchase Line")
//     var
//         item: Record Item;
//     begin
//         if PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Order then begin
//             PurchaseLine.Reset();
//             PurchaseLine.SetRange("Document Type", PurchaseHeader."Document Type");
//             PurchaseLine.SetRange("Document No.", PurchaseHeader."No.");
//             if PurchaseLine.FindSet() then
//                 repeat
//                     if item.get(PurchaseLine."No.") then begin
//                         item.MyCustField2PT := PurchaseLine."Direct Unit Cost";
//                         item.Modify();
//                     end;
//                 until PurchaseLine.Next() = 0;
//         end;
//     end;
// }
