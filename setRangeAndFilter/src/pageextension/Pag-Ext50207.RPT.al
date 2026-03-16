// pageextension 50207 RPT extends "Customer Card"
// {
//     layout
//     {
//         addafter("No.")
//         {
//             field("Cust no"; Custno)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Customer Number';
//                 Editable = false;
//             }
//         }
//     }

//     trigger OnAfterGetRecord()
//     var
//         recCust: Record Customer;
//     begin
//         Custno := Rec."No.";

//         if recCust.Get(Custno) then
//             Message('Customer found Name : %1\ City : %2', recCust.Name, recCust.City)
//         else
//             Message('Customer not found');
//     end;

//     var
//         Custno: Code[20];
// }