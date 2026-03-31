//Stop posting and releasing the sales Order if no attachment is attached.

codeunit 50123 stopPostandReleaseOrder
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReleaseSalesDoc', '', true, true)]
    local procedure CheckAttachmentBeforeRelease(var SalesHeader: Record "Sales Header")
    var
        DocAttachment: Record "Document Attachment";
    begin

        DocAttachment.SetRange("Table ID", Database::"Sales Header");
        DocAttachment.SetRange("No.", SalesHeader."No.");

        if not DocAttachment.FindFirst() then
            Error('Attachment is not there in sales order');
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', true, true)]
    local procedure CheckAttachmentBeforePost(var SalesHeader: Record "Sales Header")
    var
        DocAttachment: Record "Document Attachment";
    begin

        DocAttachment.SetRange("Table ID", Database::"Sales Header");
        DocAttachment.SetRange("No.", SalesHeader."No.");

        if not DocAttachment.FindFirst() then
            Error('Attachment is not there in sales order..');
    end;
}