table 50162 PageDemo2PT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Product Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Product Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Product Code")
        {
            Clustered = true;
        }
    }
}