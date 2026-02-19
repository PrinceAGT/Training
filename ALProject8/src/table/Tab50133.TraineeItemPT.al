table 50133 TraineeItemPT

{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Item No"; Integer)
        {
            
            Caption = 'Item No';
            TableRelation = Item."No."WHERE(Type = CONST(Inventory),Blocked = CONST(false),"Unit Price" = FILTER(>30));
            trigger OnValidate()
            var
                itemRec: Record Item;
            begin
                if itemRec.get("Item No") then begin
                    "Item Description" := itemRec.Description;
                    Quantity := itemRec."Reserved Qty. on Inventory";
                    "Unit Price" := itemRec."Unit Price";
                end;
            end;
           
        }
        field(2; "Item Description"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Name';
        }
        field(3; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                Amount := Quantity * "Unit Price";
                "Tax Applied" := 0.05*"Unit Price"*Quantity;
                "Total Amount" := Amount + "Tax Applied";
            end;
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