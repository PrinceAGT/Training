page 50155 CampusListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CampusTablePT;
    
    layout
    {
        area(Content)
        {
            repeater(Campus)
            {
                field("Campus ID";Rec."Campus ID")
                {
                    ApplicationArea = All;
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(City;Rec.City)
                {
                    ApplicationArea = All;
                }
                field(IsActive;Rec.IsActive)
                {
                    ApplicationArea = All;
                }
                field(Capacity;Rec.Capacity)
                {
                    ApplicationArea = All;
                }
                field(CurrentEnrollment;Rec.CurrentEnrollment)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}