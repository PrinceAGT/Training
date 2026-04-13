// codeunit 50132 autoOrder
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", OnAfterReleaseSalesDoc, '', true, true)]
//     local procedure OnAfterReleaseSalesDoc(var SalesHeader: Record "Sales Header")
//     var
//         SalesPost: Codeunit "Sales-Post";
//     begin
//         if SalesHeader."Document Type" <> SalesHeader."Document Type"::order then
//             exit;

//         SalesHeader.Ship := true;
//         SalesHeader.Invoice := true;

//         SalesPost.Run(SalesHeader);
//     end;
// }