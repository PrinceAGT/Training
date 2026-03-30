codeunit 50121 ShipmentDatePT
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Delivery PT', true, true)]
    local procedure OnAfterValidateDeliveryPT(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
    var
        SalesHeader: Record "Sales Header";
    begin

        if Rec."Delivery PT" <= Today then
            Error('date is out of range');

        Rec."Shipment Date" := CalcDate('-2D', Rec."Delivery PT");

        if SalesHeader.Get(Rec."Document Type", Rec."Document No.") then begin
            SalesHeader."Shipment Date" := CalcDate('-2D', Rec."Delivery PT");
            SalesHeader.Modify();
        end;
    end;
}