report 50109 "Inventory Report PT"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'InventoryReportPT.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(company_name; COMPANYNAME) { }
        }
        dataitem(Item; Item)
        {
            DataItemTableView = sorting("No.");

            column(Item_No; "No.") { }
            column(Description; Description) { }
            column(Inventory; Inventory) { }
            column(TotalItems; TotalItems) { }
            column(Inventory_Report; Inventory_Report) { }
            column(Inventory_Total; Inventory_Total) { }


            trigger OnPreDataItem()
            begin
                SetFilter(Inventory, '>0');

                TotalItems := 0;
            end;

            trigger OnAfterGetRecord()
            begin
                TotalItems += 1;
            end;

            trigger OnPostDataItem()
            begin

            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Filters)
                {
                    field(LocationFilter; LocationFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Location Filter';
                    }
                }
            }
        }
    }

    var
        TotalItems: Integer;
        LocationFilter: Code[20];
        Inventory_Report: Label 'Inventory_Report';
        Inventory_Total: Label 'Inventory_Total';

    trigger OnPreReport()
    begin
        if LocationFilter <> '' then
            Item.SetFilter("Location Filter", LocationFilter);
    end;

    trigger OnPostReport()
    begin

    end;
}