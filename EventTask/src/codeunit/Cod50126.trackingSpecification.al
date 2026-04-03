//When creating the sales line, upon inserting the value in the "Qty. to ship" field - program should automatically insert / create the line into the "Tracking specification" table.

// codeunit 50126 trackingSpecification
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Qty. to Ship', true, true)]
//     local procedure createTracking(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
//     var
//         trackSpecification: Record "Tracking Specification";
//     begin
//         if Rec.Type <> Rec.Type::Item then
//             exit;

//         trackSpecification.Reset();
//         trackSpecification.init();
//         trackSpecification."Source Type" := Database::"Sales Line";
//         trackSpecification."Source Subtype" := 1;
//         trackSpecification."Item No." := Rec."No.";
//         trackSpecification."Source ID" := Rec."Document No.";
//         trackSpecification."Source Ref. No." := Rec."Line No.";
//         trackSpecification."Quantity (base)" := Rec."Qty. to Ship";



//     end;
// }