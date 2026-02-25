page 50160 PageDemoCardPT
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PageDemoPT;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(No;Rec.No)
                {
                    ApplicationArea = All;
                    Caption = 'No';
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(currentLocation;Rec.currentLocation)
                {
                    ApplicationArea = All;
                    Caption = 'Location';
                }
            }
        }
    }
}