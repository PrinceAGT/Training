// page 50166 StudentListPageTriggerPT
// {
//     PageType = List;
//     SourceTable = StudentTablePageTriggerPT;
//     ApplicationArea = All;
//     UsageCategory = Lists;
//     Editable = false;

//     layout
//     {
//         area(Content)
//         {
//             repeater(Group)
//             {
//                 field("Student ID"; Rec."Student ID")
//                 {
//                 }

//                 field("Student Name"; Rec."Student Name")
//                 {
//                 }

//                 field(Attendance; Rec.Attendance)
//                 {
//                 }

//                 field(Status; Rec.Status)
//                 {
//                 }
//             }
//         }
//     }

//     trigger OnOpenPage()
//     begin
//         Message('Page is opened.');
//     end;

//     trigger OnClosePage()
//     begin
//         Message('Page closed.');
//     end;

//     trigger OnAfterGetRecord()
//     begin
//         Message('onaftergetrecord: %1', Rec."Student Name");
//     end;

//     trigger OnAfterGetCurrRecord()
//     begin
//         Message('Currently selected student: %1', Rec."Student Name");
//     end;
// }