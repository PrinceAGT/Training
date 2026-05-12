codeunit 50305 EventSubscriberPT
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Posting management PT", 'OnBeforePosting', '', false, false)]
    local procedure LogBeforeApproval(var Head: Record "Inventory Adjustment PT")
    var
        Log: Record "Adjustment Audit Log PT";
    begin

        Log.Init();
        Log."Adjustment No." := Head."Adjustment No.";
        Log."Action Type" := 'Hello PT';
        Log."User ID" := UserId();
        Log."Action Date Time" := CurrentDateTime();
        Log.Insert();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Posting management PT", 'OnAfterPosting', '', false, false)]
    local procedure OnAfterPosting(var Head: Record "Inventory Adjustment PT")
    begin

        Message('Adjustment %1 has been successfully posted.', Head."Adjustment No.");
    end;
}