// //Create a custom field in sales line and it should have same base validation as other fields when order is released.

// codeunit 50240 customValidation
// {
//     [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnBeforeActionEvent', 'Release', false, false)]
//     local procedure CheckMyField(var Rec: Record "Sales Header")
//     begin
//         if rec.MyCustomFieldPT = '' then
//             Error('My custom Field PT Must have some value it cannot be 0');
//     end;
// }