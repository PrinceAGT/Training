page 50190 ItemListPT
{
    PageType = List;
    SourceTable = ItemMasterPT;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = ItemCardPT;

    layout
    {
        area(Content)
        {
            repeater(Group)
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
                }
            }
        }
    }
}