// codeunit 50117 itemDescriptionPT
// {
//     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Copy Item", 'OnCopyItemOnBeforeTargetItemInsert', '', false, false)]
//     local procedure OnAfterCopyItem(var TargetItem: Record Item; SourceItem: Record Item)
//     begin
//         if TargetItem.Description <> '' then
//             TargetItem.Description := SourceItem.Description + '--PT Copied item'
//         else
//             TargetItem.Description := '--PT Copied item';
//     end;
// }