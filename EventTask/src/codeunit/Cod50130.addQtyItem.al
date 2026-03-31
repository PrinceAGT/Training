// when a user adds an item to a 
// Sales Order, check if quantity is insufficient at the
//  selected location.  create and post an Item Journal entry to
//  increase inventory.


// codeunit 50130 addQtyItem
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Quantity', true, true)]
//     local procedure OnAfterValidateQuantity(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
//     var
//         Item: Record Item;
//         ItemLedgerEntry: Record "Item Ledger Entry";
//         ItemJnlLine: Record "Item Journal Line";
//         ItemJnlPostLine: Codeunit "Item Jnl.-Post Line";
//         lastLineNo: Integer;
//         availableQty: Decimal;
//         requiredQty: Decimal;
//     begin
//         if Rec.Type <> Rec.Type::Item then
//             exit;

//         if not Item.Get(Rec."No.") then
//             exit;

//         ItemLedgerEntry.Reset();
//         ItemLedgerEntry.SetRange("Item No.", Rec."No.");
//         ItemLedgerEntry.SetRange("Location Code", Rec."Location Code");

//         ItemLedgerEntry.CalcSums(Quantity);
//         availableQty := ItemLedgerEntry.Quantity;

//         if availableQty >= Rec.Quantity then
//             exit;

//         requiredQty := Rec.Quantity - availableQty;

//         ItemJnlLine.Reset();
//         ItemJnlLine.SetRange("Journal Template Name", 'ITEM');
//         ItemJnlLine.SetRange("Journal Batch Name", 'DEFAULT');

//         if ItemJnlLine.FindLast() then
//             LastLineNo := ItemJnlLine."Line No."
//         else
//             LastLineNo := 0;

//         ItemJnlLine.Init();
//         ItemJnlLine.Validate("Journal Template Name", 'ITEM');
//         ItemJnlLine.Validate("Journal Batch Name", 'DEFAULT');
//         ItemJnlLine."Line No." := LastLineNo + 10000;

//         ItemJnlLine.Validate("Posting Date", Today);
//         ItemJnlLine.Validate("Document No.", 'AUTO');

//         ItemJnlLine.Validate("Entry Type", ItemJnlLine."Entry Type"::"Positive Adjmt.");
//         ItemJnlLine.Validate("Item No.", Rec."No.");
//         ItemJnlLine.Validate("Location Code", Rec."Location Code");
//         ItemJnlLine.Validate(Quantity, requiredQty);
//         ItemJnlLine.Insert();

//         ItemJnlPostLine.Run(ItemJnlLine);
//     end;
// }