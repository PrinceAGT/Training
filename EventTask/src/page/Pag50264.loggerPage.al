page 50264 loggerPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = loggedData;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Entry Number';
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Document Number';
                }
                field("User ID"; Rec."User ID")
                {
                    Caption = 'UserId';
                }
                field("Date Time"; Rec."Date Time")
                {
                    Caption = 'Date & Time';
                }
                field(Action; Rec.Action)
                {
                    Caption = 'Release/Reopen';
                }
            }
        }

    }

}