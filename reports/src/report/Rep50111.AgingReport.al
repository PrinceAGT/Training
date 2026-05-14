report 50111 CustomerAgingReportPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerAging.rdl';

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            RequestFilterFields = "No.";

            column(company_name; COMPANYNAME) { }
            column(companyNameLBL; companyNameLBL) { }
            column(Customer_No_; "No.") { }
            column(Customer_Name; Name) { }
            column(Report_HeadingLBL; Report_HeadingLBL) { }
            column(BalanceDueLBL; BalanceDueLBL) { }
            column(No_LBL; No_LBL) { }
            column(Name_LBL; Name_LBL) { }
            column(BalanceLBL; BalanceLBL) { }
            column(TotalLBL; TotalLBL) { }
            column(daysLBL; daysLBL) { }
            column(days30LBL; days30LBL) { }
            column(days60LBL; days60LBL) { }
            column(days90LBL; days90LBL) { }
            column(days120LBL; days120LBL) { }
            column(days120PlusLBL; days120PlusLBL) { }
            column(Bucket0; Bucket0) { }
            column(Bucket30; Bucket30) { }
            column(Bucket60; Bucket60) { }
            column(Bucket90; Bucket90) { }
            column(Bucket120; Bucket120) { }
            column(Bucket120Plus; Bucket120Plus) { }
            column(Remaining_Amt___LCY_; Remaining_Amt___LCY_) { }

            trigger OnAfterGetRecord()
            var
                CustLedgEntry: Record "Cust. Ledger Entry";
                AgingDays: Integer;
                DueDate: Date;
            begin
                Clear(Bucket0);
                Clear(Bucket30);
                Clear(Bucket60);
                Clear(Bucket90);
                Clear(Bucket120);
                Clear(Bucket120Plus);
                Clear(Remaining_Amt___LCY_);
                CustLedgEntry.Reset();
                CustLedgEntry.SetRange("Customer No.", "No.");
                //CustLedgEntry.SetRange(Open, true);

                if CustLedgEntry.FindSet() then
                    repeat

                        CustLedgEntry.CalcFields("Remaining Amt. (LCY)");

                        if CustLedgEntry."Due Date" <> 0D then
                            DueDate := CustLedgEntry."Due Date"
                        else
                            DueDate := CustLedgEntry."Document Date" + 30;

                        AgingDays := DaysBetweenDates(DueDate, StartDate);

                        if AgingDays <= 0 then
                            Bucket0 += CustLedgEntry."Remaining Amt. (LCY)"
                        else if (AgingDays >= 1) and (AgingDays <= PeriodLength) then
                            Bucket30 += CustLedgEntry."Remaining Amt. (LCY)"
                        else if (AgingDays >= PeriodLength + 1) and (AgingDays <= PeriodLength * 2) then
                            Bucket60 += CustLedgEntry."Remaining Amt. (LCY)"
                        else if (AgingDays >= PeriodLength * 2 + 1) and (AgingDays <= PeriodLength * 3) then
                            Bucket90 += CustLedgEntry."Remaining Amt. (LCY)"
                        else if (AgingDays >= PeriodLength * 3 + 1) and (AgingDays <= PeriodLength * 4) then
                            Bucket120 += CustLedgEntry."Remaining Amt. (LCY)"
                        else
                            Bucket120Plus += CustLedgEntry."Remaining Amt. (LCY)";

                    until CustLedgEntry.Next() = 0;


                Remaining_Amt___LCY_ :=
                    Bucket0 +
                    Bucket30 +
                    Bucket60 +
                    Bucket90 +
                    Bucket120 +
                    Bucket120Plus;

                if Remaining_Amt___LCY_ = 0 then
                    CurrReport.Skip();

            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(StartDate; StartDate) { ApplicationArea = All; }
                    field(PeriodLength; PeriodLength) { ApplicationArea = All; }
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
        Report_HeadingLBL: Label 'Customer Aging Report';
        BalanceDueLBL: Label 'Balance Due';
        No_LBL: Label 'No.';
        Name_LBL: Label 'Name';
        BalanceLBL: Label 'Balance';
        TotalLBL: Label 'Total';

        companyNameLBL: Label 'Company Name';

        daysLBL: Label '<= 0 Days';
        days30LBL: Label '<= 0 Days';
        days60LBL: Label '0 - 30 Days';
        days90LBL: Label '31 - 60 Days';
        days120LBL: Label '61 - 90 Days';
        days120PlusLBL: Label '> 120 Days';

        StartDate: Date;
        PeriodLength: Integer;

        Bucket0: Decimal;
        Bucket30: Decimal;
        Bucket60: Decimal;
        Bucket90: Decimal;
        Bucket120: Decimal;
        Bucket120Plus: Decimal;

        Remaining_Amt___LCY_: Decimal;

    local procedure DaysBetweenDates(DueDate: Date; AsOfDate: Date): Integer
    begin
        exit(AsOfDate - DueDate);
    end;
}