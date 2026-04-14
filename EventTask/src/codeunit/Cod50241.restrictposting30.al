// // Restricted users from posting if the balance due in the customer table and the open sales order amount exceed the credit limit for that customer.

// codeunit 50241 restrictposting30
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnBeforePostSalesDoc, '', true, true)]
//     local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         dueAmount: Decimal;
//         customer: Record Customer;
//         opSaleheader: Record "Sales Header";
//         creditLimit: Decimal;
//         openAmount: Decimal;

//     begin

//         if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
//             exit;


//         openAmount := 0;
//         dueAmount := 0;
//         if customer.get(SalesHeader."Sell-to Customer No.") then begin
//             creditLimit := customer."Credit Limit (LCY)";
//             Message('%1', creditLimit);
//             customer.CalcFields("Balance Due (LCY)");
//             dueAmount := customer."Balance Due (LCY)";
//             opSaleheader.reset();
//             opSaleheader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
//             opSaleheader.SetRange(Status, opSaleheader.Status::Open);
//             opSaleheader.SetAutoCalcFields(Amount);
//             if opSaleheader.FindSet() then
//                 repeat
//                     openAmount += opSaleheader.Amount;
//                 until opSaleheader.Next() = 0;


//         end;
//         Message('%1', openAmount + dueAmount);
//         if (openAmount + dueAmount) > creditLimit then
//             Error('Posting cannot be done as total amount is exceeding the credit limit');
//     end;
// }