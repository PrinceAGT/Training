// page 50265 "Overdue Invoice Setup"
// {
//     PageType = Card;
//     SourceTable = "Overdue Invoice PT";
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     Caption = 'overdue invoice PT date';

//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {
//                 field("From Date"; Rec."From Date") { }
//                 field("To Date"; Rec."To Date") { }
//             }
//         }
//     }

//     trigger OnOpenPage()
//     begin
//         if not Rec.Get('SETUP') then begin
//             Rec.Init();
//             Rec."No" := 'SETUP';
//             Rec.Insert();
//         end;
//     end;
// }