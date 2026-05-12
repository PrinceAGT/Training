codeunit 50303 "Approval management PT"
{
    procedure sendForApproval(var header: Record "Inventory Adjustment PT")
    begin
        Header.Status := Header.Status::"Pending Approval";
        Header.Modify();
        OnBeforeApproval(Header);
        Message('Document sent for approval %1', header."Adjustment No.");
    end;

    procedure approveDocument(var header: Record "Inventory Adjustment PT")
    var
        line: Record "Inventory Adjustment Line PT";
    begin
        line.Reset();
        line.SetRange("Adjustment No.", header."Adjustment No.");
        if not Line.FindFirst() then
            Error('Cannot approve without lines.')


        else if header.Status = header.Status::"Pending Approval" then begin
            Header.Status := Header.Status::Approved;
            Header.Modify();
        end;
        OnAfterApproval(Header);

    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeApproval(var head: record "Inventory Adjustment PT");
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterApproval(var head: record "Inventory Adjustment PT");
    begin
    end;
}