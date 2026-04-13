// pageextension 50231 SalesLinePageExt extends "Sales Order Subform"
// {
//     layout
//     {
//         addafter(Description)
//         {
//             field("MyField1"; Rec."MyField1")
//             {
//                 ApplicationArea = All;
//             }
//             field("MyField2"; Rec."MyField2")
//             {
//                 ApplicationArea = All;
//             }
//         }
//     }
// }