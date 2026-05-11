codeunit 50301 "vendor Mgmt"
{
    procedure CalculateWeightedScore(var head: Record "Vendor Evaluation Header PT")
    var
        Line: Record "Vendor Evaluation Line PT";
        total: Decimal;
    begin
        Line.SetRange("Evaluation No.", head."Evaluation No.");
        if Line.FindSet() then
            total := 0;
        repeat
            total += Line."Weighted Score";
        until Line.Next() = 0;
    end;

    procedure AssignRating()
    var
        head: Record "Vendor Evaluation Header PT";
    begin
        if head."Final Score" >= 80 then
            head."Rating Status" := head."Rating Status"::Excellent;

        if (head."Final Score" >= 60) and (head."Final Score" <= 79) then
            head."Rating Status" := head."Rating Status"::Good;

        if (head."Final Score" >= 40) and (head."Final Score" <= 59) then
            head."Rating Status" := head."Rating Status"::Average;

        if (head."Final Score" < 40) then
            head."Rating Status" := head."Rating Status"::Poor;
    end;

    procedure finalScore(var head: Record "Vendor Evaluation Header PT")
    var
        recScore: Record "Vendor Evaluation Line PT";
        recHead: Record "Vendor Evaluation Header PT";
        score: Decimal;
    begin
        recScore.Reset();
        recScore.SetRange("Evaluation No.", head."Evaluation No.");

        if recScore.FindSet() then
            score := 0;
        repeat
            score += recScore.Score;
        until recScore.Next() = 0;
        Head."Final Score" := score;
        Head.Modify();

    end;
}