// table 50180 StudentPaymentPT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1;"Entry No."; Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2;"Student Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;

//         }
//         field(3; "Student No."; Integer)
//         {
//             DataClassification = ToBeClassified;

//         }
//         field(4; "payment Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(5; "Amount"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1; "Entry No.")
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

//     end;

//     trigger OnModify()
//     begin

//     end;

//     trigger OnDelete()
//     begin

//     end;

//     trigger OnRename()
//     begin

//     end;

// }