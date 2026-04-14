// //Create a custom field in sales line and it should have same base validation as other fields when order is released.

// codeunit 50240 customValidation
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnBeforePostSalesDoc, '', true, true)]
//     local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header")
//     begin
//         if SalesHeader.MyCustomFieldPT = '' then
//             Error('My custom Field PT Must have some value it cannot be 0');
//     end;
// }