codeunit 50121 ShipmentDatePT
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Delivery PT', true, true)]
    local procedure OnAfterValidateDeliveryPT(var Rec: Record "Sales Line")
    var
        SalesHeader: Record "Sales Header";
    begin
        if SalesHeader.Get(rec."Document Type", rec."Document No.") then begin
            SalesHeader."Shipment Date" := CalcDate('-2D', rec."Delivery PT");
            SalesHeader.Modify();
        end;
    end;
}