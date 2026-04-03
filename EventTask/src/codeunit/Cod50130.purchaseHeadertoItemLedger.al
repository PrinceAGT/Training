// purchaseheader to itemledgerentries

// codeunit 50130 purchaseHeadertoItemLedger
// {
//     [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignHeaderValues', '', true, true)]
//     local procedure HeaderToLine(
//         var PurchLine: Record "Purchase Line";
//         PurchHeader: Record "Purchase Header")
//     begin
//         PurchLine.MyCustomFieldPT := PurchHeader.MyCustomFieldPT;
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", OnPostItemJnlLineOnAfterCopyDocumentFields, '', false, false)]
//     local procedure OnPostItemJnlLineOnAfterCopyDocumentFields(var ItemJournalLine: Record "Item Journal Line"; PurchaseLine: Record "Purchase Line"; WarehouseReceiptHeader: Record "Warehouse Receipt Header"; WarehouseShipmentHeader: Record "Warehouse Shipment Header"; PurchRcptHeader: Record "Purch. Rcpt. Header");
//     begin
//         ItemJournalLine.MyCustomFieldPT := PurchaseLine.MyCustomFieldPT;
//     end;

//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", OnAfterInitItemLedgEntry, '', false, false)]
//     local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer);
//     begin
//         NewItemLedgEntry.MyCustomFieldPT := ItemJournalLine.MyCustomFieldPT;
//     end;
// }