page 50156 StudentCardPT
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentCampusPT;

    layout
    {
        area(Content)
        {
            group(Student)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(CampusID; Rec.CampusID)
                {
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        recCampus: Record CampusTablePT;
                    begin
                        recCampus.Reset();
                        recCampus.SetRange(IsActive, true);
                        if rec.City <> '' then
                            recCampus.SetRange(City, rec.City);
                        if page.RunModal(page::CampusListPT, recCampus) = Action::LookupOK
                            then begin
                            if recCampus.CurrentEnrollment >= recCampus.Capacity then
                                Error('This Campus is full');

                            text := recCampus."Campus ID";

                             recCampus.CurrentEnrollment := recCampus.CurrentEnrollment + 1;
                             recCampus.Modify();
                            exit(true);
                            end;
                            exit(false);
                        end;
                }
            }
        }
    }
}