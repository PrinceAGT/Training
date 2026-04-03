// codeunit 50127 autorelease
// {
//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeTestStatusOpen', '', true, true)]
//     local procedure OnBeforeTestStatusOpen(var SalesLine: Record "Sales Line"; var SalesHeader: Record "Sales Header"; var IsHandled: Boolean; xSalesLine: Record "Sales Line"; CallingFieldNo: Integer; var StatusCheckSuspended: Boolean)
//     var
//         ReleaseSalesDoc: Codeunit "Release Sales Document";
//     begin
//         if SalesLine."Document Type" = SalesLine."Document Type"::Order then begin
//             if SalesHeader.Status = SalesHeader.Status::Released then begin
//                 IsHandled := true;
//                 ReleaseSalesDoc.Reopen(SalesHeader);
//                 Message('prince: Sales Order %1 was auto-reopened for editing.', SalesHeader."No.");
//             end;
//         end;
//     end;
// }  