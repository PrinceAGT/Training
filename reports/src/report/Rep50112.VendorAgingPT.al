report 50112 VendorAgingPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './VendorAging.rdl';

    dataset
    {
        dataitem(DataItemName; Vendor)
        {
            RequestFilterFields = "No.";

            column(VendorNo; "No.") { }
            column(Vendor_Name; Name) { }
            column(CompanyName; COMPANYNAME) { }
            column(Report_HeadingLBL; Report_HeadingLBL) { }

            column(NoLBL; NoLBL) { }
            column(NameLBL; NameLBL) { }
            column(BalanceLBL; BalanceLBL) { }
            column(TotalLBL; TotalLBL) { }
            column(BeforeLBL; BeforeLBL) { }
            column(Days30LBL; Days30LBL) { }
            column(Days60LBL; Days60LBL) { }
            column(Days90LBL; Days90LBL) { }
            column(AfterLBL; AfterLBL) { }

            column(Bucket0; Bucket0) { }
            column(Bucket30; Bucket30) { }
            column(Bucket60; Bucket60) { }
            column(Bucket90; Bucket90) { }
            column(Bucket120; Bucket120) { }
            column(BalanceAMT; BalanceAMT) { }

            trigger OnAfterGetRecord()
            var
                DueDate: Date;
                VendorLedgerEntry: Record "Vendor Ledger Entry";
            begin
                Clear(Bucket0);
                Clear(Bucket30);
                Clear(Bucket60);
                Clear(Bucket90);
                Clear(Bucket120);
                Clear(BalanceAMT);

                VendorLedgerEntry.Reset();
                VendorLedgerEntry.SetRange("Vendor No.", "No.");
                VendorLedgerEntry.SetRange(Open, true);

                if VendorLedgerEntry.FindSet() then
                    repeat
                        VendorLedgerEntry.CalcFields("Remaining Amt. (LCY)");

                        if VendorLedgerEntry."Remaining Amt. (LCY)" <> 0 then begin

                            if VendorLedgerEntry."Due Date" <> 0D then
                                DueDate := VendorLedgerEntry."Due Date"
                            else
                                DueDate := VendorLedgerEntry."Posting Date";

                            if DueDate <= StartDate then
                                Bucket0 += VendorLedgerEntry."Remaining Amt. (LCY)"
                            else if DueDate <= StartDate + PeriodLength then
                                Bucket30 += VendorLedgerEntry."Remaining Amt. (LCY)"
                            else if DueDate <= StartDate + (PeriodLength * 2) then
                                Bucket60 += VendorLedgerEntry."Remaining Amt. (LCY)"
                            else if DueDate <= StartDate + (PeriodLength * 3) then
                                Bucket90 += VendorLedgerEntry."Remaining Amt. (LCY)"
                            else
                                Bucket120 += VendorLedgerEntry."Remaining Amt. (LCY)";
                        end;

                    until VendorLedgerEntry.Next() = 0;

                BalanceAMT := Bucket0 + Bucket30 + Bucket60 + Bucket90 + Bucket120;

                if BalanceAMT = 0 then
                    CurrReport.Skip();
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(startdate; startdate)
                    {
                        ApplicationArea = All;
                        Caption = 'Start Date';
                    }
                    field(periodlength; periodlength)
                    {
                        ApplicationArea = All;
                        Caption = 'Period Length';
                    }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        if StartDate = 0D then
            StartDate := Today;
        if PeriodLength <= 0 then
            PeriodLength := 30;
    end;

    var
        Report_HeadingLBL: Label 'Vendor Aging Report';
        NoLBL: Label 'No.';
        NameLBL: Label 'Name';
        BalanceLBL: Label 'Balance';
        TotalLBL: Label 'Total';
        BeforeLBL: Label 'Before';
        Days30LBL: Label '0 - 30 Days';
        Days60LBL: Label '31 - 60 Days';
        Days90LBL: Label '61 - 90 Days';
        AfterLBL: Label 'After';
        StartDate: Date;
        PeriodLength: Integer;
        BalanceAMT: Decimal;
        Bucket0: Decimal;
        Bucket30: Decimal;
        Bucket60: Decimal;
        Bucket90: Decimal;
        Bucket120: Decimal;
}