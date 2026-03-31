// table 50185 ServiceAssignmentItemPT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Assignment No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(2; "Item No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = ItemMasterPT."Item No." where("Item Type" = const(Service));

//             trigger OnValidate()
//             var
//                 ItemRec: Record ItemMasterPT;
//             begin
//                 if ItemRec.Get("Item No.") then begin
//                     "Item Name" := ItemRec."Item Name";
//                     "Service Cost" := ItemRec."Service Cost";
//                 end;
//             end;
//         }

//         field(3; "Item Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(4; "Service Cost"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(5; "Technician Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }

//         field(6; "Assignment Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(PK; "Assignment No.")
//         {
//             Clustered = true;
//         }
//     }
// }