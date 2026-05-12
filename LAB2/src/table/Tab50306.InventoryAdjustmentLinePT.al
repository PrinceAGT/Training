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
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if rec.Quantity < 1 then begin
                    Error('Quantity should be greater than 0');
                end;
            end;
        }
        field(6; "Unit Cost"; Decimal)
        {
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if rec."Unit Cost" < 0 then begin
                    Error('Unit cost should be greater than or equal to 0');
                end;
                rec."Total Cost" := rec.Quantity * rec."Unit Cost";
            end;
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
