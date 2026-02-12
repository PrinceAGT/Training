page 50130 LibraryPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = LibraryPT;

    
    layout
    {
        area(Content)
        {
            repeater(Book)
            {
                field("NO";Rec.NO)
                {
                    Caption = 'NO';
                }
                field("BookID";Rec.BookID)
                {
                     Caption = 'BookID';
                }
                field("BookTitle";Rec.BookTitle)
                {
                        Caption = 'BookTitle';
                }
            }
        }
    }
}