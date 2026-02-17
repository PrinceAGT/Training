table 50141 salesLinesPT
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;No; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "salesHeaderPT".No;
        }
        field(2; LineNo; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(3; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(4;Quantity;Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(5; unitPrice; Decimal)
        {
            DataClassification = CustomerContent;
        }


    }
    
    keys
    {
        key(pk; LineNo, No)
        {
            Clustered = true;
        }
    }
}