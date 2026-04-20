// //When creating the purchase line, upon inserting the value in the 'Qty. to Invoice' field - program should automatically insert / create the line into the "Tracking specification" table.

// codeunit 50126 trackingSpecification
// {
//     [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterValidateEvent', 'quantity', false, false)]
//     local procedure TrackSpeci(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
//     var

//         reservEntry: Record "Reservation Entry";
//         item: Record Item;
//         EntryNo: Integer;


//     begin
//         if Rec.Type <> Rec.Type::Item then
//             exit;

//         if item.Get(Rec."No.") then begin
//             if item."Item Tracking Code" = '' then
//                 exit
//         end;
//         reservEntry.Reset();
//         reservEntry.SetRange("Source Type", Database::"Purchase Line");
//         reservEntry.SetRange("Source Subtype", rec."Document Type");
//         reservEntry.SetRange("Source ID", rec."Document No.");
//         reservEntry.SetRange("Source Ref. No.", rec."Line No.");
//         if reservEntry.FindFirst() then begin
//             reservEntry.Validate("Item No.", Rec."No.");
//             reservEntry.Validate("Location Code", Rec."Location Code");
//             reservEntry.Validate("Quantity", Rec."Qty. to Invoice");
//             reservEntry.Validate("Qty. per Unit of Measure", Rec."Qty. per Unit of Measure");
//             reservEntry.Validate("Quantity (Base)", Rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Qty. to Handle (Base)", Rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Qty. to Invoice (Base)", Rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Lot No.", 'LOT-0710');
//             reservEntry.Modify(true);

//         end else begin
//             EntryNo := reservEntry.GetLastEntryNo() + 1;
//             reservEntry.Init();
//             reservEntry.Validate("Entry No.", EntryNo);
//             reservEntry.Validate("Location Code", rec."Location Code");
//             reservEntry.Validate("Item No.", rec."No.");
//             reservEntry.Validate("Reservation Status", reservEntry."Reservation Status"::Surplus);
//             reservEntry.Validate(Description, rec.Description);
//             reservEntry.Validate("Creation Date", Today);
//             reservEntry.Validate("Created By", UserId);
//             reservEntry.Validate("Source Type", Database::"Purchase Line");
//             reservEntry.Validate("Source Subtype", rec."Document Type");
//             reservEntry.Validate("Source ID", rec."Document No.");
//             reservEntry.Validate("Source Ref. No.", rec."Line No.");
//             reservEntry.Validate("Quantity", rec."Qty. to Invoice");
//             reservEntry.Validate("Qty. per Unit of Measure", Rec."Qty. per Unit of Measure");
//             reservEntry.Validate("Quantity (Base)", rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Qty. to Handle (Base)", rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Qty. to Invoice (Base)", rec."Qty. to Invoice (Base)");
//             reservEntry.Validate("Item Tracking", reservEntry."Item Tracking"::"Lot No.");
//             reservEntry.Validate("Lot No.", 'LOT-0710');
//             reservEntry.Insert(true);

//         end
//     end;
// }