table 50168 ProjectPT
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Project No"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Project No.';
        }
        field(2; "Project Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project Name';
        }
    }
    
    keys
    {
        key(Key1; "Project No")
        {
            Clustered = true;
        }
    }    
}