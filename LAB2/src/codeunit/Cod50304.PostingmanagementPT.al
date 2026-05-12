codeunit 50304 "Posting management PT"
{
    procedure postAdjustment(var head: record "Inventory Adjustment PT")
    var
        line: record "Inventory Adjustment Line PT";
    begin
        OnBeforePosting(head);
        line.SetRange("Adjustment No.", head."Adjustment No.");
        if not line.FindSet() then begin
            Error('No lines to post');
        end;

        if (head.Status <> head.Status::Approved) then begin
            Error('Only approved documents can be posted');
        end;

        if line.Quantity < 1 then begin
            Error('Quantity should be greater than 0');
        end;

        head.Status := head.Status::Posted;
        head."Posting Date" := Today();
        head."Requested By" := UserId;
        head."Approved By" := UserId;
        head.Modify();

        if head.Status = head.Status::Posted then begin
            Message('Document already posted %1', head."Adjustment No.");
        end;
        OnAfterPosting(head);

    end;

    procedure calculateTotalQuantity(var head: record "Inventory Adjustment PT")
    var
        line: record "Inventory Adjustment Line PT";
        total: Decimal;
    begin
        line.SetRange("Adjustment No.", head."Adjustment No.");
        if line.FindSet() then begin
            Total := 0;
            repeat
                Total += line.Quantity;
            until line.Next() = 0;
            Message('Total quantity for document %1 is %2', head."Adjustment No.", Total);
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforePosting(var head: record "Inventory Adjustment PT");
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterPosting(var head: record "Inventory Adjustment PT");
    begin
    end;
}