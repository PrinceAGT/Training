// table 50186 ItemMasterPT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Item No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(2; "Item Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(3; "Item Type"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionMembers = Service,Inventory;
//         }

//         field(4; "Service Cost"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(5; "Total Assignments"; Integer)
//         {
//             FieldClass = FlowField;
//             CalcFormula = count(ServiceAssignmentItemPT where("Item No." = field("Item No.")));
//         }
//     }

//     keys
//     {
//         key(PK; "Item No.")
//         {
//             Clustered = true;
//         }
//     }
// }