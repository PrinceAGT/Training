page 50306 "Inventory Adjustment Doc PT"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Inventory Adjustment PT";

    layout
    {
        area(content)
        {
            group(Header)
            {
                field("Adjustment No."; Rec."Adjustment No.")
                {

                }
                field("Location Code"; Rec."Location Code")
                {

                }
                field(Status; Rec.Status)
                {

                }
                field("Request Date"; Rec."Request Date")
                {

                }
                field("Requested By"; Rec."Requested By")
                {

                }
                field("Approved By"; Rec."Approved By")
                {

                }
                field("Posting Date"; Rec."Posting Date")
                {

                }
            }

            part(Lines; "Inventory Adjustment LinePT")
            {
                SubPageLink = "Adjustment No." = field("Adjustment No.");
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(SendApproval)
            {
                ApplicationArea = All;
                Caption = 'Send Approval';
                trigger OnAction()
                var
                    ApprovalManagement: Codeunit "Approval management PT";
                begin
                    ApprovalManagement.sendForApproval(Rec);
                    Message('Document sent for approval %1', Rec."Adjustment No.");
                end;
            }
            action("Approve")
            {
                ApplicationArea = All;
                Caption = 'Approve';
                trigger OnAction()
                var
                    ApprovalManagement: Codeunit "Approval management PT";
                begin
                    ApprovalManagement.approveDocument(Rec);
                    Message('Document approved %1', Rec."Adjustment No.");
                end;
            }
            action("Reject")
            {
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    rec.Status := rec.Status::Open;
                    Message('Document Rejected %1', rec."Adjustment No.");
                end;
            }
            action("Post Adjustment")
            {
            }
        }
    }

    var
        myInt: Integer;
}