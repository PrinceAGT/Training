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
        area(Processing)
        {
            action("Calculate Score")
            {

                trigger OnAction()

                var
                    recMgmt: Codeunit "vendor Mgmt";
                    recHead: Record "Vendor Evaluation Header PT";

                begin


                    recMgmt.finalScore(Rec);
                    recMgmt.AssignRating();

                end;
            }
            action("Complete Evaluation")
            {

                trigger OnAction()

                begin

                    rec.Status := Rec.Status::Completed;

                end;
            }
            action("Reopen Evaluation")
            {

                trigger OnAction()

                begin
                    rec.Status := rec.Status::Open;
                end;
            }
        }
    }


}