page 50101 "Overdue Invoice list PT"
{
    PageType = List;
    SourceTable = "Cust. Ledger Entry";
    UsageCategory = Lists;
    ApplicationArea = All;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SendEmails)
            {
                ApplicationArea = All;
                Caption = 'Send Reminder Emails';
                Image = SendMail;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    overDueCD: Codeunit overDueCD;
                begin
                    overDueCD.SendReminder(Rec);
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        OverDueCD: Codeunit overDueCD;
    begin
        OverDueCD.ApplyFilters(Rec);
    end;

}