codeunit 50111 onpagePT
{
    [EventSubscriber(ObjectType::Page, Page::"Customer Card", OnAfterOnOpenPage, '', true, true)]
    procedure MyProcedure(var Customer: Record Customer)
    begin
        if Customer.County = '' then begin
            Customer.County := 'delhi';
            Customer.Modify();
        end;
    end;
}