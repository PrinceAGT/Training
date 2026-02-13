page 50138 TraineeList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TraineeItemPT;
    CardPageId = "traineePT card";
    Caption = 'Trainee List';
    
    layout
    {
        area(Content)
        {
            repeater(general)
            {
                field("Item No";Rec."Item No")
                {
                   ApplicationArea = All; 
                }
                field("Item Name";Rec."Item Name")
                {
                   ApplicationArea = All; 
                }
                field(Quantity;Rec.Quantity)
                {
                   ApplicationArea = All; 
                }
                field("Unit Price";Rec."Unit Price")
                {
                   ApplicationArea = All; 
                }
                field(Amount;Rec.Amount)
                {
                   ApplicationArea = All; 
                }
                field("Tax Applied";Rec."Tax Applied")
                {
                   ApplicationArea = All; 
                }
                field("Total Amount";Rec."Total Amount")
                {
                   ApplicationArea = All; 
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
}