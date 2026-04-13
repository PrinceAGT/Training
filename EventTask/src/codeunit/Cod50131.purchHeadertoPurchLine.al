// create a custom field in purchase order and purchase line
//  where the data should flow atuomatically when user 
// selects item type in purchase line.

// codeunit 50131 purchHeadertoPurchLine
// {
//     [EventSubscriber(ObjectType::Table, Database::"Purchase Line", OnAfterAssignHeaderValues, '', true, true)]
//     local procedure OnAfterAssignHeaderValues(var PurchLine: Record "Purchase Line"; PurchHeader: Record "Purchase Header")
//     begin
//         PurchLine."My Custom Field PT" := PurchHeader."My Custom Field PT";
//     end;
// }