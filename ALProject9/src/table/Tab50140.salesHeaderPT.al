table 50140 salesHeaderPT
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"No"; code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Customer Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Order Date"; Date)
        {
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }
}