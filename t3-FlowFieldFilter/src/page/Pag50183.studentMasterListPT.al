// page 50183 studentMasterListPT
// {
//     PageType = List;
//     ApplicationArea = All;
//     UsageCategory = Lists;
//     SourceTable = StudentMasterPT;

//     layout
//     {
//         area(Content)
//         {
//             repeater(Group)
//             {
//                 field("Student No."; Rec."Student No.")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Student Name"; Rec."Student Name")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Date of Payment"; Rec."Date of Payment")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Total fee"; Rec."Total fee")
//                 {
//                     ApplicationArea = All;
//                     Editable = false;
//                 }

//                 field("Total Payment"; Rec."Total Payment")
//                 {
//                     ApplicationArea = All;
//                     Editable = false;
//                 }

//                 field("Last Payment Amount"; Rec."Last Payment Amount")
//                 {
//                     ApplicationArea = All;
//                     Editable = false;
//                 }
//             }
//         }
//     }

//     trigger OnAfterGetRecord()
//     begin
//         Rec.CalcFields("Total fee", "Total Payment", "Last Payment Amount");
//     end;
// }