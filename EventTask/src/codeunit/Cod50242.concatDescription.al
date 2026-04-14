//Concatenating my name in the description field of the lastline of sales lines in the sales invoice.

codeunit 50242 concatDescription
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Line", OnBeforeInsertEvent, '', true, true)]
    local procedure SalesInvoiceLineOnBeforeInsert(var Rec: Record "Sales Invoice Line")
    var
        SalesInvLine: Record "Sales Invoice Line";
    begin
        SalesInvLine.Reset();
        SalesInvLine.SetRange("Document No.", Rec."Document No.");
        if SalesInvLine.FindLast() then begin
            Rec.Description := Rec.Description + ' Prince';
        end;
    end;
}
