
// codeunit 50115 CustomFieldPT
// {

//     [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', false, false)]
//     local procedure OnAfterCopyGenJnlLineFromSalesHeader(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line")
//     begin
//         GenJournalLine.MyCustomFieldPT := SalesHeader.MyCustomFieldPT;
//     end;

//     [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry", 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', false, false)]
//     local procedure OnAfterCopyCustLedgerEntryFromGenJnlLine(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
//     begin
//         CustLedgerEntry.MyCustomFieldPT := GenJournalLine.MyCustomFieldPT;
//     end;

// }
