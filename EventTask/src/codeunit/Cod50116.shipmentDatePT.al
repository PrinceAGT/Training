// codeunit 50116 shipmentDatePT
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnInitRecordOnBeforeAssignShipmentDate, '', true, true)]
//     local procedure clearShipmentDate(var SalesHeader: Record "Sales Header"; var IsHandled: Boolean)
//     begin
//         SalesHeader."Shipment Date" := 0D;
//         IsHandled := true;
//         Message('shipment date is now null');
//     end;
// }