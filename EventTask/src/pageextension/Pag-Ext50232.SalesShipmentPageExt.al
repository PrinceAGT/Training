// pageextension 50232 SalesShipmentPageExt extends "posted Sales Shipment Lines"
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