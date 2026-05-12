codeunit 50301 "vendorMgmt"
{
    procedure CalculateWeightedScore(var Line: Record "Vendor Evaluation Line PT")
    begin
        Line."Weighted Score" := Line.Score * Line.Weightage;
        Line.Modify(true);
    end;

    procedure CalculateFinalScore(var Header: Record "Vendor Evaluation Header PT")
    var
        Line: Record "Vendor Evaluation Line PT";
        Total: Decimal;
    begin
        Total := 0;
        Line.SetRange("Evaluation No.", Header."Evaluation No.");
        if Line.FindSet() then
            repeat
                Total += Line.Score;
            until Line.Next() = 0;

        Header."Final Score" := Total;
        AssignRating(Header);
        Header.Modify(true);

        OnAfterScoreCalculation(Header);
    end;

    procedure AssignRating(var Header: Record "Vendor Evaluation Header PT")
    begin
        if Header."Final Score" >= 90 then
            Header."Rating Status" := Header."Rating Status"::Excellent
        else if Header."Final Score" >= 75 then
            Header."Rating Status" := Header."Rating Status"::Good
        else if Header."Final Score" >= 50 then
            Header."Rating Status" := Header."Rating Status"::Average
        else
            Header."Rating Status" := Header."Rating Status"::Poor;
    end;

    procedure CompleteEvaluation(var Header: Record "Vendor Evaluation Header PT")
    var
        Line: Record "Vendor Evaluation Line PT";
    begin
        OnBeforeCompleteEvaluation(Header);

        Line.SetRange("Evaluation No.", Header."Evaluation No.");
        if not Line.FindFirst() then
            Error('Cannot complete evaluation without lines.');

        OnAfterEvaluationCompleted(Header);
    end;

    [IntegrationEvent(false, false)]
    procedure OnBeforeCompleteEvaluation(var Header: Record "Vendor Evaluation Header PT")
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterScoreCalculation(var Header: Record "Vendor Evaluation Header PT")
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterEvaluationCompleted(var Header: Record "Vendor Evaluation Header PT")
    begin
    end;
}
