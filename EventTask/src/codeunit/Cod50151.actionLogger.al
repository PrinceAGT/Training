//  On sales order after clicking on release/reopen then 
// user name, time and action clicked(release/reopen) needs to be logged in a new table.


// codeunit 50151 actionLogger
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnAfterReleaseSalesDoc', '', true, true)]
//     local procedure OnAfterReleaseSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         logRec: Record loggedData;
//     begin

//         if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
//             exit;

//         logRec.Init();
//         logRec."Document No." := SalesHeader."No.";
//         logRec."User ID" := UserId();
//         logRec."Date Time" := CurrentDateTime();
//         logRec."Action" := logRec."Action"::Release;

//         logRec.Insert();
//     end;


//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnAfterReopenSalesDoc', '', true, true)]
//     local procedure OnAfterReopenSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         logRec: Record loggedData;
//     begin

//         if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
//             exit;

//         logRec.Init();
//         logRec."Document No." := SalesHeader."No.";
//         logRec."User ID" := UserId();
//         logRec."Date Time" := CurrentDateTime();
//         logRec."Action" := logRec."Action"::Reopen;

//         logRec.Insert();
//     end;
// }