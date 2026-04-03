// Add Custom Field to Sales Header and Flow Value to General Ledger Entry

//codeunit 50128 SalesHeaderToGeneralLedger
// {
//     [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", OnAfterCopyGenJnlLineFromSalesHeader, '', false, false)]
//     local procedure OnAfterCopyGenJnlLineFromSalesHeader(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line");
//     begin
//         GenJournalLine.MyCustomFieldPT := SalesHeader.MyCustomFieldPT;
//     end;

//     [EventSubscriber(ObjectType::Table, Database::"G/L Entry", OnAfterCopyGLEntryFromGenJnlLine, '', false, false)]
//     local procedure OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line");
//     begin
//         GLEntry.MyCustomFieldPT := GenJournalLine.MyCustomFieldPT;
//     end;
// }