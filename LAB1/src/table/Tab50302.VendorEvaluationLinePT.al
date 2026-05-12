table 50302 "Vendor Evaluation Line PT"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Evaluation No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Criteria Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Criteria Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Score"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Score > 100 then
                    Error('Score cannot exceed 100');
            end;
        }
        field(6; "Weightage"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Weightage <= 0 then
                    Error('Weightage cannot be 0');

                "Weighted Score" := Score * Weightage;
            end;
        }
        field(7; "Weighted Score"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Evaluation No.", "Line No.")
        {
            Clustered = true;
        }
    }

}