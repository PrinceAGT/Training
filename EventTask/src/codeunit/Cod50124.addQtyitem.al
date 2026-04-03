// when a user adds an item to a 
// Sales Order, check if quantity is insufficient at the
//  selected location.  create and post an item Journal entry to
//  increase inventory.


// codeunit 50124 addQtyitem
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Quantity', true, true)]
//     local procedure OnAfterValidateQuantity(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
//     var
//         item: Record Item;
//         itemLedgerEntry: Record "Item Ledger Entry";
//         itemJnlLine: Record "Item Journal Line";
//         itemJnlPostLine: Codeunit "Item Jnl.-Post Line";
//         lastLineNo: Integer;
//         availableQty: Decimal;
//         requiredQty: Decimal;
//     begin
//         if Rec.Type <> Rec.Type::Item then
//             exit;

//         if not Item.Get(Rec."No.") then
//             exit;

//         itemLedgerEntry.Reset();
//         itemLedgerEntry.SetRange("Item No.", Rec."No.");
//         itemLedgerEntry.SetRange("Location Code", Rec."Location Code");

//         itemLedgerEntry.CalcSums(Quantity);
//         availableQty := itemLedgerEntry.Quantity;

//         if availableQty >= Rec.Quantity then
//             exit;

//         requiredQty := Rec.Quantity - availableQty;

//         itemJnlLine.Reset();
//         itemJnlLine.SetRange("Journal Template Name", 'Item');
//         itemJnlLine.SetRange("Journal Batch Name", 'DEFAULT');

//         if itemJnlLine.FindLast() then
//             LastLineNo := itemJnlLine."Line No.";

//         itemJnlLine.Init();
//         itemJnlLine.Validate("Journal Template Name", 'Item');
//         itemJnlLine.Validate("Journal Batch Name", 'DEFAULT');
//         itemJnlLine."Line No." := LastLineNo + 10000;

//         itemJnlLine.Validate("Posting Date", Today);
//         itemJnlLine.Validate("Document No.", 'AUTO');

//         itemJnlLine.Validate("Entry Type", itemJnlLine."Entry Type"::"Positive Adjmt.");
//         itemJnlLine.Validate("item No.", Rec."No.");
//         itemJnlLine.Validate("Location Code", Rec."Location Code");
//         itemJnlLine.Validate(Quantity, requiredQty);
//         itemJnlLine.Insert();

//         itemJnlPostLine.Run(itemJnlLine);
//     end;
// }