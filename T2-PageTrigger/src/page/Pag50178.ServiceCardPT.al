// page 50178 ServiceCardPT
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = servicePT;


//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {

//                 field("Assignment No"; Rec."Assignment No")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Assignment No.';
//                 }
//                 field("Customer No."; Rec."Customer No.")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Customer No.';
//                 }
//                 field("Customer Name"; Rec."Customer Name")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Customer Name';
//                 }
//                 field("Service Cost"; Rec."Service Cost")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Service Cost';
//                 }
//                 field("Tax Amount"; Rec."Tax Amount")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Tax Amount';
//                 }
//                 field("Total Amount"; Rec."Total Amount")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Total Amount';
//                 }
//                 field(Status; Rec.Status)
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Status';
//                 }
//                 field("Assignment Date"; Rec."Assignment Date")
//                 {
//                     ApplicationArea = All;
//                     Caption = 'Date';
//                 }
//             }
//         }
//     }

//     trigger OnAfterGetRecord()
//     begin
//         if (rec."Service Cost" > 1000) then begin
//             Message('High value service assignment');
//         end;

//         if Rec.Status = Rec.Status::Completed then
//             CurrPage.Editable(false)
//         else
//             CurrPage.Editable(true);

//     end;
// }