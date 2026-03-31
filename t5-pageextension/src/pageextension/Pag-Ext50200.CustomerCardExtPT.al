// pageextension 50200 CustomerCardExtPT extends "Customer Card"
// {
//     layout
//     {
//         modify(Name)
//         {
//             Editable = AllowEdit;
//         }

//         modify("Credit Limit (LCY)")
//         {
//             Editable = AllowEdit;
//         }

//         modify("Phone No.")
//         {
//             Editable = AllowEdit;
//         }

//         addafter(General)
//         {
//             group("Service Information")
//             {

//                 field(Contact; Rec.Contact)
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }

//         moveafter(Contact; "Phone No.")
//         moveafter("Phone No."; "E-Mail")
//     }

//     var
//         AllowEdit: Boolean;

//     trigger OnAfterGetRecord()
//     begin
//         if Rec.Blocked = Rec.Blocked::All then
//             AllowEdit := false
//         else
//             AllowEdit := true;
//     end;

//     trigger OnAfterGetCurrRecord()
//     begin
//         if Rec.Blocked = Rec.Blocked::All then
//             AllowEdit := false
//         else
//             AllowEdit := true;
//     end;
// }