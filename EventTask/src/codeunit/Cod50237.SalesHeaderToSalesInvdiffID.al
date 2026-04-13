// codeunit 50237 SalesHeaderToSalesInvdiffID
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnInsertPostedHeadersOnAfterInsertInvoiceHeader, '', true, true)]
//     local procedure OnInsertPostedHeadersOnAfterInsertInvoiceHeader(var SalesHeader: Record "Sales Header"; var SalesInvoiceHeader: Record "Sales Invoice Header")
//     begin
//         SalesInvoiceHeader.MyCustomFieldPT := SalesHeader.MyCustomFieldPT;
//     end;
// }