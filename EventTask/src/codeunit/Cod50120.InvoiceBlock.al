// // 1. Block invoice  only if:
// // The overdue amount exceeds  (₹10,000).
// // OR the number of overdue invoices is more than a limit (3 overdue invoices).
// // Also:
// // If a invoice is blocked, show a confirmation dialog.
// // Only users with a  SUPER user should be allowed to override and continue posting.

// codeunit 50120 InvoiceBlock
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
//     local procedure CheckOverdueBeforePosting(var SalesHeader: Record "Sales Header")
//     var
//         CustLedgerEntry: Record "Cust. Ledger Entry";
//         OverdueAmount: Decimal;
//         OverdueCount: Integer;
//         Msg: Text;
//     begin

//         CustLedgerEntry.SetRange("Customer No.", SalesHeader."Sell-to Customer No.");
//         CustLedgerEntry.SetRange(Open, true);
//         CustLedgerEntry.SetFilter("Due Date", '<%1', Today);

//         OverdueAmount := 0;
//         OverdueCount := 0;

//         if CustLedgerEntry.FindSet() then begin
//             repeat
//                 OverdueAmount += CustLedgerEntry."Remaining Amount";
//                 OverdueCount += 1;
//             until CustLedgerEntry.Next() = 0;
//         end;


//         if (OverdueAmount > 10000) or (OverdueCount >= 3) then begin
//             Msg := StrSubstNo('Posting can done only by super user');

//             if not IsUserSuper() then begin
//                 Error(Msg);
//             end
//         end;
//     end;


//     local procedure IsUserSuper(): Boolean
//     var
//         AccessControl: Record "Access Control";
//     begin
//         AccessControl.SetRange("User Security ID", UserSecurityId());
//         AccessControl.SetRange("Role ID", 'SUPER');

//         exit(AccessControl.FindFirst());
//     end;
// }