// codeunit 50113 CustomerNamePT
// {
//     [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', false, false)]
//     local procedure ShowMessageOnNameInsert(var Rec: Record Customer)
//     begin
//         if Rec.Name <> '' then
//             Message('Customer Name has been entered: %1', Rec.Name);
//     end;
// }
