table 50159 PageDemoPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No';

            trigger OnValidate()
            begin
                if No <= 0 then
                    Error('No must be greater than zero.');
            end;
        }

        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';

            trigger OnValidate()
            begin
                if Name = '' then
                    Error('Name cannot be empty.');
            end;
        }

        field(3; currentLocation; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Location';
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}