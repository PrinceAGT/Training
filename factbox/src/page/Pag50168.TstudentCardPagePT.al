// page 50168 TstudentCardPagePT
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = TstudentPT;

//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {
//                 field(No; Rec.No) { 
//                     ApplicationArea = All;
//                      }
//                 field(Name; Rec.Name) {
//                      ApplicationArea = All;
//                       }
//                 field(Status; Rec.Status) { 
//                     ApplicationArea = All; 
//                     }
//                 field("Active Status"; Rec."Active Status") { 
//                     ApplicationArea = All; 
//                     }
//                 field("Contact Number";Rec."Contact Number") {
//                     ApplicationArea = All;
//                 }
//             }

//             group(Academics)
//             {
//                 field("Total Marks"; Rec."Total Marks") { 
//                     ApplicationArea = All; 
//                     }
//                 field(Grade; Rec.Grade) { 
//                     ApplicationArea = All; Editable = false; 
//                     }
//                 field(Email; Rec.Email) { 
//                     ApplicationArea = All; 
//                     }
//                 field("Block Reason"; Rec."Block Reason") { 
//                     ApplicationArea = All; 
//                     }
//             }

//             group(Administration)
//             {
//                 field("Created By"; Rec."Created By") { 
//                     ApplicationArea = All; Editable = false; 
//                     }
//                 field("Created On"; Rec."Created On") { 
//                     ApplicationArea = All; Editable = false; 
//                     }
//                 field("Last Modified By"; Rec."Last Modified By") { 
//                     ApplicationArea = All; Editable = false; 
//                     }
//                 field("Last Modified On"; Rec."Last Modified On") { 
//                     ApplicationArea = All; Editable = false; 
//                     }
//             }
//         }
//         area(FactBoxes)
//         {
//             part(StudentFactBox; StudentFactBoxPT)
//             {
//                 SubPageLink = No = FIELD(No);
//             }
//         }
//     }

//     actions
// {
//     area(Processing)
//     {
//         action(MakeInactive)
//         {
//             Caption = 'Make Inactive';
//             ApplicationArea = All;
//             Promoted = true;
//             PromotedCategory = Process;
//             PromotedIsBig = true;

//             trigger OnAction()
//             begin
//                 if not Rec."Active Status" then
//                     Error('Student is already inactive.');

//                 Rec."Active Status" := false;

//                 if Rec.Status = Rec.Status::Active then
//                     Rec.Status := Rec.Status::Draft;

//                 Rec."Last Modified By" := UserId;
//                 Rec."Last Modified On" := Today;

//                 Rec.Modify(true);
//                 Message('Student has been marked as inactive.');
//             end;
//         }
//     }
// }

// trigger OnInsertRecord(BelowxRec: Boolean): Boolean
// begin

//     Rec.Status := Rec.Status::Draft;
//     Rec."Active Status" := false;

//     if (Rec.Email <> '') and (StrPos(Rec.Email, '@') = 0) then begin
//         Rec."Attempt Count" += 1;
//         Error('Invalid Email. Insert prevented.');
//     end;

//     Rec."Created By" := UserId;
//     Rec."Created On" := Today;
//     Rec."Last Modified By" := UserId;
//     Rec."Last Modified On" := Today;

//     exit(true);
// end;

// trigger OnModifyRecord(): Boolean
// begin
//     Rec."Last Modified By" := UserId;
//     Rec."Last Modified On" := Today;
//     exit(true);
// end;

// }