codeunit 50303 "Approval management PT"
{
    procedure sendForApproval(var header: Record "Inventory Adjustment PT")
    begin
        Header.Status := Header.Status::"Pending Approval";
        Header.Modify();
    end;

    procedure approveDocument(var header: Record "Inventory Adjustment PT")
    var
        line: Record "Inventory Adjustment Line PT";
    begin
        line.Reset();
        line.SetRange("Adjustment No.", header."Adjustment No.");
        if not Line.FindFirst() then
            Error('Cannot approve without lines.');
    end;
}