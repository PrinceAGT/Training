// pageextension 50213 CustomerCardExtPT extends "Customer Card"
// {
//     actions
//     {
//         addlast(processing)
//         {
//             action(CustomerInvoiceSummary)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Customer Invoice SummaryPT';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 var
//                     InvoiceCount: Integer;
//                     TotalAmount: Decimal;
//                     AvgAmount: Decimal;
//                 begin
//                     CalculateInvoiceSummary(Rec."No.", InvoiceCount, TotalAmount, AvgAmount);

//                     Message(
//                     'Customer Invoice Summary\Customer No : %1\Total Invoices : %2\Total Amount : %3\Average Invoice Amount : %4',
//                     Rec."No.",
//                     InvoiceCount,
//                     TotalAmount,
//                     AvgAmount);
//                 end;
//             }
//         }
//     }

//     procedure CalculateInvoiceSummary(CustomerNo: Code[20]; var InvoiceCount: Integer; var TotalAmount: Decimal; var AvgAmount: Decimal)
//     var
//         SalesHeader: Record "Sales Header";
//         StartDate: Date;
//         EndDate: Date;
//     begin

        

//         SalesHeader.SetRange("Sell-to Customer No.", CustomerNo);
//         SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Invoice);

//         SalesHeader.SetRange("Posting Date", 20250313D, 20260313D);

//         if SalesHeader.FindSet() then
//             repeat
//                 InvoiceCount += 1;
//                 SalesHeader.CalcFields(Amount);
//                 TotalAmount += SalesHeader.Amount;
//             until SalesHeader.Next() = 0;

//         if InvoiceCount <> 0 then
//             AvgAmount := Round(TotalAmount / InvoiceCount, 0.01);
//     end;
// }