codeunit 50110 EventSubscriberPT
{
    [EventSubscriber(ObjectType::Table, database::Customer, OnAfterOnInsert, '', false, false)]
    procedure setCreditLimit(var Customer: Record Customer)
    begin
        if Customer."Credit Limit (LCY)" = 0 then begin
            Customer."Credit Limit (LCY)" := 200;
            Customer.Modify(true);
        end;
    end;
}