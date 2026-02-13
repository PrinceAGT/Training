table 50133 TraineeItemPT

{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Item No"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Item No';
            TableRelation = Item."No."; 
            
        }
        field(2; "Item Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Name';
        }
        field(3; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity';
        }
        field(4; "Unit Price"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Price';
        }
        field(5; Amount; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount';
        }
        field(6; "Tax Applied"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Tax Applied';
        }
        field(7; "Total Amount"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Amount';
        }
    }
    
    keys
    {
        key(Key1; "Item No")
        {
            Clustered = true;
        }
    }
}