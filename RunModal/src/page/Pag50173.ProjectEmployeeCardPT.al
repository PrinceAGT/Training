// page 50173 ProjectEmployeeCardPT
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = ProjectEmloyeePT;

//     layout
//     {
//         area(Content)
//         {
//             group(Employee)
//             {
//                 field("Employee No."; Rec."Employee No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Employee Name"; Rec."Employee Name")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Project No"; Rec."Project No")
//                 {
//                     ApplicationArea = All;

//                    trigger OnLookup(var Text: Text): Boolean
//                    var
//                         recProject : Record  ProjectPT;
//                     begin
//                         if page.RunModal(Page::ProjectListPT,recProject) = Action::LookupOK
//                         then begin
//                             rec."Project No" := recProject."Project No";
//                             rec."Project Name" := recProject."Project Name";

//                         end;
//                     end;
//                 }
//                 field("Project Name"; Rec."Project Name")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ProjectList)
//             {
//                 Caption = 'Project List';
//                 trigger OnAction()
//                 begin
//                     page.Run(page::ProjectListPT);
//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }