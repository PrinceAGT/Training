page 50199 service2cardPT
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Service2PT;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Assignment No";Rec."Assignment No")
                {
                    ApplicationArea = All;
                }
                field("Customer Name";Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Service cost";Rec."Service cost")
                {
                    ApplicationArea = All;
                }
                field(Status;Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Created;Rec.Created)
                {
                    ApplicationArea = All;
                }
                field(Modified;Rec.Modified)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("Create Assignment with insert trigger")
            {
                
                trigger OnAction()
                var
                    recS2 : Record Service2PT;
                begin
                    recs2.Init();
                    recS2."Assignment No" := Format(time);
                    recS2."Customer Name" := 'prince';
                    recs2."Service cost" := 10000;

                    recS2.Insert(true);
                end;
            }
            action("Without trigger insert")
            {
                trigger OnAction()
                var
                    recS2: Record Service2PT;
                begin
                recS2.Init();
                recS2."Assignment No" := Format(Time + 1);
                recS2."Customer Name" := 'Customer B';
                recS2."Service Cost" := 600;

                recS2.Insert(false); 
                end;
            }
            action("With trigger Modify")
            {
                trigger OnAction()
                begin
                    Rec."Service Cost" := Rec."Service Cost" + 100;
                    Rec.Modify(true); 
                end;
            }
            action("Without trigger Modify")
            {
                trigger OnAction()
                begin
                    Rec."Service Cost" := Rec."Service Cost" + 100;
                    Rec.Modify(false);
                end;
            }

            action("Delete With Trigger")
            {
                trigger OnAction()
                begin
                    Rec.Delete(true);
                end;
            }

            action("Delete Without Trigger")
            {
                trigger OnAction()
                begin
                    Rec.Delete(false);
                end;
            }

            action("Rename With Trigger")
            {
                trigger OnAction()
                var
                    NewNo: Code[20];
                begin
                    NewNo := Rec."Assignment No" + '-R';
                    Rec.Rename(NewNo, true);
                end;
            }

            action("Rename Without Trigger")
            {
                trigger OnAction()
                var
                    NewNo: Code[20];
                begin
                    NewNo := Rec."Assignment No" + '-NR';
                    Rec.Rename(NewNo, false);
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}