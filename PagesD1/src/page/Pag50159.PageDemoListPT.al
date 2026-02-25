page 50159 PageDemoListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PageDemoPT;
    // CardPageId = PageDemoCardPT;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
    var
        RecordCount: Integer;
        IsBigNumber: Boolean;

      trigger OnOpenPage()
    begin
        Message('Page Trigger: OnOpenPage fired');
        Rec.SetRange(currentLocation, 'India'); 
    end;

    trigger OnClosePage()
    begin
        Message('Page Trigger: OnClosePage fired');
    end;

    trigger OnAfterGetRecord()
    begin
        RecordCount += 1;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if Rec.No > 10 then
            IsBigNumber := true
        else
            IsBigNumber := false;
    end;
}