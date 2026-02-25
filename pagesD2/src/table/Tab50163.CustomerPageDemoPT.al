table 50163 CustomerPageDemoPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No"; Integer)
        {
            AutoIncrement = true;
        }

        field(2; "Customer Name"; Text[50])
        {
        }

        field(3; "Product Code"; Code[10])
        {
            
        }
    }

    keys
    {
        key(PK; "Customer No")
        {
            Clustered = true;
        }
    }
}