// //Add two custom fields to the Item card. After posting a Sales or Purchase order, update these fields with the Unit Price from the posted document lines.

// codeunit 50238 quest20
// {
//     [EventSubscriber(ObjectType::Table, database::"Sales Invoice Line", OnAfterInsertEvent, '', true, true)]
//     local procedure OnAfterInsertEventsales(var Rec: Record "Sales Invoice Line")
//     var
//         item: Record item;
//     begin
//         if Rec.Type = Rec.type::Item then begin
//             if item.Get(Rec."No.") then begin
//                 item.MyCustField1PT := Rec."Unit Price";
//                 item.Modify();
//             end;
//         end;
//     end;

//     [EventSubscriber(ObjectType::table, database::"Purch. Inv. Line", OnAfterInsertEvent, '', true, true)]
//     local procedure OnAfterInsertEvent(var Rec: Record "Purch. Inv. Line")
//     var
//         item: Record item;
//     begin
//         if Rec.Type = Rec.type::Item then begin
//             if item.Get(Rec."No.") then begin
//                 item.MyCustField1PT := Rec."Direct Unit Cost";
//                 item.Modify();
//             end;
//         end;
//     end;
// }
