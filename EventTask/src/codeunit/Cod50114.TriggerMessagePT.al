// codeunit 50114 TriggerMessagePT
// {
//     [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, 'Name', false, false)]
//     local procedure ShowMessageOnNameInsert(var Rec: Record Customer)
//     begin
//         Rec.Name := Rec.Name;
//         Message('Customer Name has been entered prince');
//     end;
// }

