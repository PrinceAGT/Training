// table 50265 "Credit Limit Log"
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; MyField; Integer)
//         {
//             DataClassification = ToBeClassified;

//         }
//         field(2; "Customer No."; Code[20]) { }
//         field(3; "Old Credit Limit"; Decimal) { }
//         field(4; "New Credit Limit"; Decimal) { }
//         field(5; "User ID"; Text[200]) { }
//         field(6; "Changed AT"; DateTime) { }
//     }

//     keys
//     {
//         key(PK; MyField)
//         {
//             Clustered = true;
//         }
//     }
// }