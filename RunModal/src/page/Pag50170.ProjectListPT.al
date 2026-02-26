page 50170 ProjectListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ProjectPT;
    CardPageId = ProjectCardPT;
    
    layout
    {
        area(Content)
        {
            repeater(Project)
            {
                field("Project No";Rec."Project No")
                {
                    ApplicationArea = All;
                }
                field("Project Name";Rec."Project Name")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                        Error('This is only view mode'); 
                    end;
                }
            } 
        }
    }
}