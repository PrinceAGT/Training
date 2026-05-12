table 50306 "Inventory Adjustment Line PT"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Adjustment No."; Code[20])
        {

        }
        field(2; "Line No."; Integer)
        {

        }
        field(3; "Item No."; Code[20])
        {

        }
        field(4; Description; Text[100])
        {

        }
        field(5; Quantity; Decimal)
        {

        }
        field(6; "Unit Cost"; Decimal)
        {

        }
        field(7; "Total Cost"; Decimal)
        {

        }
    }

    keys
    {
        key(PK; "Adjustment No.", "Line No.") { Clustered = true; }
    }
}
