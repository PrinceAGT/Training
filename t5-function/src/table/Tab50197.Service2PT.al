// table 50197 Service2PT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Assignment No"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2; "Customer Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(3; "Service cost"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(4; "Status"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionMembers = Open,Released,Complete;
//         }
//         field(5; "Created"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(6; "Modified"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1; "Assignment No")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//         // Add changes to field groups here
//     }

//     var
//         myInt: Integer;

//     trigger OnInsert()
//     begin
//         Created := Today;
//         Message('with trigger');
//     end;

//     trigger OnModify()
//     begin
//         Modified := Today;
//     end;

//     trigger OnDelete()
//     begin
//         Message('Deleted with Trigger.');
//     end;

//     trigger OnRename()
//     begin
//         Message('Primary key got modified.');
//     end;

// }