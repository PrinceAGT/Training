// codeunit 50119 flowFromSalesHeadertoSalesLine
// {
//     [EventSubscriber(ObjectType::Table, database::"Sales Line", OnAfterAssignHeaderValues, '', true, true)]
//     local procedure copyField(SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
//     begin
//         SalesLine."Delivery PT" := SalesHeader."Delivery PT";
//     end;
// }