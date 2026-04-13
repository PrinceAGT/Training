
// Add two custom fields to Sales Shipment Line, and ensure that values from the Sales Line flow to these fields automatically during shipment posting.

// tableextension 50115 SalesLineExt extends "Sales Line"
// {
//     fields
//     {
//         field(50100; "MyField1"; Text[50])
//         {
//         }
//         field(50101; "MyField2"; Integer)
//         {
//         }
//     }
// }