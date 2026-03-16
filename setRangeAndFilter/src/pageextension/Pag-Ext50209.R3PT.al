// pageextension 50209 R3PT extends "Vendor List"
// {
//     layout
//     {
//         addafter(Name) {
//             field("Vendor name";VendorName) {
//                 ApplicationArea = All;
//                 trigger OnValidate()
//                 var
//                     recVen: record Vendor;
//                 begin
//                     recVen.SetRange(Name, '*%1*', VendorName);
//                     if recVen.FindFirst() then
//                     begin
//                         Message('The first Matching vendor is: %1',recVen.Name);
//                     end;
//                 end;
//             }
//         }
//     }
    
//     var
//         VendorName: Text[100];
// }