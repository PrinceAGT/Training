// codeunit 50129 salesHeadertoVendorLedger
// {
//     [EventSubscriber(ObjectType::Table, database::"Gen. Journal Line", OnAfterCopyGenJnlLineFromPurchHeader, '', true, true)]
//     local procedure OnAfterCopyGenJnlLineFromPurchHeader(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
//     begin
//         GenJournalLine.MyCustomFieldPT := PurchaseHeader.MyCustomFieldPT;
//     end;


//     [EventSubscriber(ObjectType::Table, Database::"Vendor Ledger Entry", OnAfterCopyVendLedgerEntryFromGenJnlLine, '', true, true)]
//     local procedure OnAfterCopyVendLedgerEntryFromGenJnlLine(var VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
//     begin
//         VendorLedgerEntry.MyCustomFieldPT := GenJournalLine.MyCustomFieldPT;
//     end;
// }