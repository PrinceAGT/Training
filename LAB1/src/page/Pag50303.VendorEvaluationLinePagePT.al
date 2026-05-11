page 50303 "Vendor Evaluation Line Page PT"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vendor Evaluation Line PT";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Evaluation No."; Rec."Evaluation No.")
                {

                }
                field("Line No."; Rec."Line No.")
                {

                }
                field("Criteria Code"; Rec."Criteria Code")
                {

                }
                field("Criteria Description"; Rec."Criteria Description")
                {

                }
                field(Score; Rec.Score)
                {

                }
                field(Weightage; Rec.Weightage)
                {

                }
                field("Weighted Score"; Rec."Weighted Score")
                {

                }
            }
        }

    }

}