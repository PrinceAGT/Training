page 50302 "Vendor evaluation Header DOC"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Vendor Evaluation Header PT";

    layout
    {
        area(Content)
        {
            group(Genral)
            {
                field("Evaluation No."; Rec."Evaluation No.")
                {

                }
                field("Vendor No."; Rec."Vendor No.")
                {


                }
                field("Vendor Name"; Rec."Vendor Name")
                {

                }
                field("Evaluation Month"; Rec."Evaluation Month")
                {

                }
                field("Final Score"; Rec."Final Score")
                {

                }
                field("Rating Status"; Rec."Rating Status")
                {

                }
                field(Status; Rec.Status)
                {

                }
            }
            part(Lines; "Vendor Evaluation Line Page PT")
            {
                SubPageLink = "Evaluation No." = field("Evaluation No.");
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CalculateScore)
            {
                ApplicationArea = All;
                Caption = 'Calculate Score';
                trigger OnAction()
                var
                    EvalMgmt: Codeunit "vendorMgmt";
                begin
                    EvalMgmt.CalculateFinalScore(Rec);
                end;
            }

            action(CompleteEvaluation)
            {
                ApplicationArea = All;
                Caption = 'Complete Evaluation';
                trigger OnAction()
                var
                    EvalMgmt: Codeunit "vendorMgmt";
                begin
                    EvalMgmt.CompleteEvaluation(Rec);
                end;
            }

            action(ReopenEvaluation)
            {
                ApplicationArea = All;
                Caption = 'Reopen Evaluation';
                trigger OnAction()
                begin
                    rec.Status := Rec.Status::Open;
                    rec.Modify(true);
                end;
            }
        }
    }


}