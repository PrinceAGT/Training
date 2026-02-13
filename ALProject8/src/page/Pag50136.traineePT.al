page 50133 "traineePT card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = TraineeItemPT;
    Caption = 'Trainee Card';
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Item No";Rec."Item No")
                {
                    ApplicationArea = ALL;
                }
                field("Item Name";Rec."Item Name")
                {
                    ApplicationArea = ALL;
                }
                field(Quantity;Rec.Quantity)
                {
                    ApplicationArea = ALL;
                }
                field("Unit Price";Rec."Unit Price")
                {
                    ApplicationArea = ALL;
                }
                field(Amount;Rec.Amount)
                {
                    ApplicationArea = ALL;
                }
                field("Tax Applied";Rec."Tax Applied")
                {
                    ApplicationArea = ALL;
                }
                field("Total Amount";Rec."Total Amount")
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}