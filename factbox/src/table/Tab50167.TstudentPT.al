table 50167 TstudentPT
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            trigger OnValidate()
            begin
                if CopyStr(No,1,4) = 'TEMP' then
                    Error('No. cannot start with TEMP.');
            end;
        }

        field(2; Name; Text[100])
        {
            trigger OnValidate()
            begin
                if StrLen(Name) < 3 then
                    Error('Name must have at least 3 characters.');
            end;
        }

        field(3; Status; Option)
        {
            OptionMembers = Draft,Active,Blocked;

            trigger OnValidate()
            begin
                if Status = Status::Active then begin
                    if "Total Marks" < 40 then
                        Error('Marks must be 40 or above to activate.');

                    if (Email = '') or (StrPos(Email,'@') = 0) then
                        Error('Valid Email required to activate.');

                    "Active Status" := true;
                end;

                if Status = Status::Blocked then
                    "Active Status" := false;
            end;
        }

        field(4; "Active Status"; Boolean)
        {
            InitValue = false;
        }

        field(5; "Total Marks"; Decimal)
        {
            trigger OnValidate()
            begin
                if ("Total Marks" < 0) or ("Total Marks" > 100) then
                    Error('Marks must be between 0 and 100.');
                if (Status = Status::Active) and ("Total Marks" < 40) then begin
                    Status := Status::Blocked;
                    "Block Reason" := 'Marks below 40';
                    "Active Status" := false;
                end;
               
                if "Total Marks" >= 90 then
                     Grade := 'A'
                else if "Total Marks" >= 75 then
                     Grade := 'B'
                else if "Total Marks" >= 50 then
                     Grade := 'C'
                 else
                     Grade := 'D';

            end;
        }

        field(6; Grade; Code[10])
        {
            Editable = false;
        }

        field(7; Email; Text[100])
        {
            trigger OnValidate()
            begin
                if (Email <> '') and (StrPos(Email,'@') = 0) then
                    Error('Invalid Email format.');
            end;
        }

        field(8; "Block Reason"; Text[150]) { }
        field(9; "Attempt Count"; Integer) 
        { 
            Editable = false; 
        }
        field(10; "Created By"; Code[50]) 
        { 
            Editable = false; 
        }
        field(11; "Created On"; Date) { 
            Editable = false; 
        }
        field(12; "Last Modified By"; Code[50]) 
        { 
            Editable = false; 
        }
        field(13; "Last Modified On"; Date) 
        { 
            Editable = false; 
        }
        field(14; "Contact Number"; text[20]) {
            
        }
    }

    keys
    {
        key(PK; No) { Clustered = true; }
    }
}