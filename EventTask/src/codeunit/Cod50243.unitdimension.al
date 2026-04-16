// codeunit 50243 unitdimension
// {

//     [EventSubscriber(ObjectType::Table, Database::"Default Dimension",
//         'OnAfterInsertEvent', '', false, false)]
//     local procedure OnInsert(var Rec: Record "Default Dimension")
//     var
//         Employee: Record Employee;
//     begin
//         if Rec."Table ID" <> Database::Employee then
//             exit;

//         if Employee.Get(Rec."No.") then begin
//             Employee.Validate("PT Dimension Code", rec."Dimension Value Code");
//             Employee.Modify(true);
//         end;
//     end;

//     [EventSubscriber(ObjectType::Table, Database::"Default Dimension",
//         'OnAfterModifyEvent', '', false, false)]
//     local procedure OnModify(var Rec: Record "Default Dimension")
//     var
//         Employee: Record Employee;
//     begin
//         if Rec."Table ID" <> Database::Employee then
//             exit;

//         if Employee.Get(Rec."No.") then begin
//             Employee.Validate("PT Dimension Code", Rec."Dimension Value Code");
//             Employee.Modify(true);
//         end;
//     end;

//     [EventSubscriber(ObjectType::Table, Database::"Default Dimension",
//         'OnAfterDeleteEvent', '', false, false)]
//     local procedure OnDelete(var Rec: Record "Default Dimension")
//     var
//         Employee: Record Employee;
//     begin
//         if Rec."Table ID" <> Database::Employee then
//             exit;

//         if Employee.Get(Rec."No.") then begin
//             Employee."PT Dimension Code" := '';
//             Employee.Modify(true);
//         end;
//     end;
// }