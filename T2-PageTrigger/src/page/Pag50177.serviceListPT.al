page 50177 serviceListPT
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = servicePT;
    CardPageId = ServiceCardPT;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Assignment No";Rec."Assignment No")
                {
                    ApplicationArea = All;
                    Caption = 'Assignment No.';
                }
                field("Customer No.";Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'Customer No.';
                }
                field("Customer Name";Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                }
                field("Service Cost";Rec."Service Cost")
                {
                    ApplicationArea = All;
                    Caption = 'Service Cost';
                }
                field(Status;Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                }
                field("Tax Amount";Rec."Tax Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Tax Amount';
                }
                field("Total Amount";Rec."Total Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Total Amount';
                }
                field("Assignment Date";Rec."Assignment Date")
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetRange(Status, rec.Status::Open);
        Message('Only open service assignments are dispalyed.');
    end;
}