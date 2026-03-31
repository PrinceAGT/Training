
// // 1.There is a field called SalesPerson code on Sales Header, by defauly this comes from Customer card. 
// // 2. When a new sales order is created  Then update the salesperson code on the sales Header with the salesperson code which has the least no of orders+Invoices.

// codeunit 50122 Salesperson
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', true, true)]
//     local procedure OnAfterValidateSellToCustomerNo(var Rec: Record "Sales Header")
//     var
//         Salesperson: Record "Salesperson/Purchaser";
//         SalesHeader: Record "Sales Header";
//         Min: Integer;
//         Count: Integer;
//         SelectedSalesperson: Code[20];
//     begin
//         if Rec."Document Type" <> Rec."Document Type"::Order then
//             exit;

//         Min := 1000;

//         if Salesperson.FindSet() then
//             repeat
//                 Count := 0;

//                 SalesHeader.Reset();
//                 SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
//                 SalesHeader.SetRange("Salesperson Code", Salesperson.Code);
//                 Count += SalesHeader.Count();

//                 SalesHeader.Reset();
//                 SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Invoice);
//                 SalesHeader.SetRange("Salesperson Code", Salesperson.Code);
//                 Count += SalesHeader.Count();

//                 if Count < Min then begin
//                     Min := Count;
//                     SelectedSalesperson := Salesperson.Code;
//                 end;

//             until Salesperson.Next() = 0;

//         if SelectedSalesperson <> '' then
//             Rec."Salesperson Code" := SelectedSalesperson;
//     end;
// }