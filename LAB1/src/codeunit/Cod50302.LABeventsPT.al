codeunit 50302 LABeventsPT
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"vendorMgmt", 'OnBeforeCompleteEvaluation', '', false, false)]
    local procedure LogBeforeComplete(var Header: Record "Vendor Evaluation Header PT")
    var
        Log: Record "Evaluation Comment Log PT";
    begin
        Log.Init();
        Log."Evaluation No." := Header."Evaluation No.";
        Log.Comments := 'Hello PT';
        Log."Created By" := UserId();
        Log."Created Date Time" := CurrentDateTime();
        Log.Insert();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"vendorMgmt", 'OnAfterScoreCalculation', '', false, false)]
    local procedure LogAfterScore(var Header: Record "Vendor Evaluation Header PT")
    begin
        Message('Score calculated  %1', Header."Final Score");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"vendorMgmt", 'OnAfterEvaluationCompleted', '', false, false)]
    local procedure LogAfterComplete(var Header: Record "Vendor Evaluation Header PT")
    begin
        Header.Status := Header.Status::Completed;
        Header.Modify(true);

        Message('Evaluation %1 marked as Completed.', Header."Evaluation No.");
    end;
}
