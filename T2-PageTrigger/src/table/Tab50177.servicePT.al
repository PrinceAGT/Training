// table 50177 servicePT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1;"Assignment No"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2;"Customer No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Customer."No.";
//             trigger OnValidate()
//             var
//                 RecCust : Record Customer;
//             begin
//                 if RecCust.get("Customer No.") then begin
//                     "Customer Name" := RecCust.Name;
//                 end;
//             end;
//         }
//         field(3; "Customer Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(4; "Service Cost"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//             trigger OnValidate()
//             var
//                 myInt: Integer;
//             begin
//                 rec."Tax Amount" := 0.18 * "Service Cost";
//                 rec."Total Amount" := "Service Cost" + "Tax Amount";
//             end;
//         }
//         field(5; "Status"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionMembers = Open, Released, Completed;
//         }
//         field(6; "Assignment Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(7; "Tax Amount"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//             Editable = false;
//         }
//         field(8; "Total Amount"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//             Editable = false;
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