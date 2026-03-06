page 50191 ItemCardPT
{
    PageType = Card;
    SourceTable = ItemMasterPT;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }

                field("Item Name"; Rec."Item Name")
                {
                    ApplicationArea = All;
                }

                field("Item Type"; Rec."Item Type")
                {
                    ApplicationArea = All;
                }

                field("Service Cost"; Rec."Service Cost")
                {
                    ApplicationArea = All;
                }

                field("Total Assignments"; Rec."Total Assignments")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}