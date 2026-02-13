table 50134 EmpPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee No"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Employee No';
        }

        field(2; "Name"; Text[50]) {
            DataClassification = ToBeClassified;
            Caption = 'Text';
         }

        field(3; "Dept Code"; Code[10]) {
            DataClassification = ToBeClassified;
            Caption = 'Dept Code';
         }

        field(4; "Salary"; Decimal) {
            DataClassification = ToBeClassified;
            Caption = 'Salary';
         }
    }

    keys
    {
        key(PK; "Employee No")
        {
            Clustered = true;
        }
    }
}