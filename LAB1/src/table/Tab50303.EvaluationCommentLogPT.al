table 50303 "Evaluation Comment Log PT"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; "Evaluation No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Comments"; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Created By"; code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Created Date Time"; DateTime)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}