codeunit 50112 salesPT
{
    [EventSubscriber(ObjectType::Page, Page::"Sales Order", OnPostOnAfterSetDocumentIsPosted, '', true, true)]
    local procedure MyProcedure(var DocumentIsPosted: Boolean)
    begin
        if DocumentIsPosted = true then begin
            Message('Sales order posted PT');
        end;
    end;
}