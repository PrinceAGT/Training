// Task detail - 
//Add a new custom date field in the Sales Line table. When a user enters this date, the system should automatically update the existing Shipment Date to two days earlier than the entered. Additionally, the system must validate that the field is later than today’s date, and if not, raise an error stating ' date is out of range

// codeunit 50121 ShipmentDatePT
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Delivery PT', true, true)]
//     local procedure OnAfterValidateDeliveryPT(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
//     var
//         SalesHeader: Record "Sales Header";
//     begin
//         if Rec."Delivery PT" <= CalcDate('+1D', Today) then
//             Error('date is out of range');
//         Rec."Shipment Date" := CalcDate('-2D', Rec."Delivery PT");

//         if SalesHeader.Get(Rec."Document Type", Rec."Document No.") then begin
//             SalesHeader."Shipment Date" := CalcDate('-2D', Rec."Delivery PT");
//             SalesHeader.Modify();
//         end;
//     end;
// }