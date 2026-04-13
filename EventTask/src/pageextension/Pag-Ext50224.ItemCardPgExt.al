pageextension 50224 ItemCardPgExt extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field(MyCustField1PT; Rec.MyCustField1PT)
            {
                ApplicationArea = All;
            }
            field(MyCustField2PT; Rec.MyCustField2PT)
            {
                ApplicationArea = All;
            }
        }
    }

}