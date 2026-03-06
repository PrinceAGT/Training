page 50193 ServiceAssignmentCardPT
{
    PageType = Card;
    SourceTable = ServiceAssignmentItemPT;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Assignment No."; Rec."Assignment No.")
                {
                    ApplicationArea = All;
                }

                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        ItemRec: Record ItemMasterPT;
                    begin
                        ItemRec.Reset();
                        ItemRec.SetRange("Item Type", ItemRec."Item Type"::Service);

                        if Page.RunModal(Page::ItemListPT, ItemRec) = Action::LookupOK then begin
                            Rec.Validate("Item No.", ItemRec."Item No.");
                            Rec."Item Name" := ItemRec."Item Name";
                            Rec."Service Cost" := ItemRec."Service Cost";

                            CurrPage.Update();
                        end;

                        exit(true);
                    end;
                }

                field("Item Name"; Rec."Item Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Service Cost"; Rec."Service Cost")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Technician Name"; Rec."Technician Name")
                {
                    ApplicationArea = All;
                }

                field("Assignment Date"; Rec."Assignment Date")
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
            action(ViewItems)
            {
                Caption = 'View Items';
                ApplicationArea = All;
                Image = View;

                trigger OnAction()
                begin
                    Page.Run(Page::ItemListPT);
                end;
            }
        }
    }
}