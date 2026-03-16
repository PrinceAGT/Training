// pageextension 50208 R2PT extends "Item Card"
// {
//     layout
//     {
//         addafter("Base Unit of Measure") {
//             field(FilterPT; UOM)
//             {
//                 ApplicationArea = All;
//                 trigger OnValidate()
//                 var
//                     recItem : Record  Item;
//                 begin
//                     recItem.SetRange("Base Unit of Measure", rec."Base Unit of Measure");

//                     if recItem.FindFirst() then
//                     begin
//                         Message(
//                           'First Item with Base unit of measure is %1 is: %2',
//                           Rec."Base Unit of Measure",
//                           recItem."No.");
//                     end;
//                 end;
            
//             }
//         }
//     }
    
//     actions
//     {
//         // Add changes to page actions here
//     }
    
//     var
//         UOM: Code[10];
// }