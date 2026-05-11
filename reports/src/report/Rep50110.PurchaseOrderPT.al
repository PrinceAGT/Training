report 50110 PurchaseOrderPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseOrderPT.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = sorting("Document Type", "No.") where("Document Type" = const(Order));
            RequestFilterFields = "No.", "Buy-from Vendor No.";

            column(Purchase_order; Purchase_order) { }
            column(Vendor_invoice_no; Vendor_invoice_no) { }
            column(Vendor_Order_no; Vendor_Order_no) { }
            column(Vendor_Order_No_; "Vendor Order No.") { }
            column(CompanyHomePage; CompanyInfo."Home Page") { }
            column(CompanyAddress; companyInfo.Address) { }
            column(CompanyAddress2; companyInfo."Address 2") { }
            column(Companycity; companyInfo.City) { }
            column(Companycounty; companyInfo.County) { }
            column(CompanyPostCode; companyInfo."Post Code") { }
            column(CompanyRegion; companyInfo."Country/Region Code") { }
            column(HomePage; HomePage) { }
            column(EmailID; EmailID) { }
            column(CompanyEMail; CompanyInfo."E-Mail") { }
            column(CompanyPhoneNo; CompanyInfo."Phone No.") { }
            column(PhoneNo; PhoneNo) { }
            column(ShiptoAddress; ShiptoAddress) { }
            column(No_; "No.") { }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name") { }
            column(Buy_from_Contact; "Buy-from Contact") { }
            column(Pay_to_Address; "Pay-to Address") { }
            column(Buy_from_City; "Buy-from City") { }
            column(Buy_from_County; "Buy-from County") { }
            column(Buy_from_Post_Code; "Buy-from Post Code") { }
            column(Buy_from_Country_Region_Code; "Buy-from Country/Region Code") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(CompanyPicture; CompanyInfo.Picture) { }
            column(CompanyName; CompanyInfo.Name) { }
            column(Sub_Total; "Amount") { }
            column(Invoice_Discount; "Invoice Discount Amount") { }
            column(TaxAmount; TaxAmount) { }
            column(Total_USD; "Amount Including VAT") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Purchaser_Code; "Purchaser Code") { }
            column(Expected_Receipt_Date; "Expected Receipt Date") { }
            column(Shipment_Method_Code; "Shipment Method Code") { }
            column(PaymentTermsLbl; PaymentTermsLbl) { }
            column(ShipmentMethodLbl; ShipmentMethodLbl) { }
            column(BuyerLbl; BuyerLbl) { }
            column(ReceiveByLbl; ReceiveByLbl) { }



            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                column(Item_No; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Unit_of_Measure_Code; "Unit of Measure Code") { }
                column(Direct_Unit_Cost; "Direct Unit Cost") { }
                column(Line_Amount; "Line Amount") { }
                column(subTotal; subTotal) { }
                column(invDiscount; invDiscount) { }
                column(tax; tax) { }
                column(TotalUSd; TotalUSd) { }

            }
            trigger OnPreDataItem()
            var
                NoFilter: Text;
            begin
                NoFilter := GetFilter("No.");
                Message('NoFilter %1', NoFilter);
                SetFilter("No.", NoFilter);
            end;

            trigger OnAfterGetRecord()
            begin
                CalcFields("Amount", "Amount Including VAT");
                TaxAmount := "Amount Including VAT" - "Amount";
            end;
        }
    }

    trigger OnPreReport()
    begin
        CompanyInfo.Get();
        CompanyInfo.CalcFields(Picture)
    end;


    var
        Purchase_order: Label 'PURCHASE ORDER';
        Vendor_invoice_no: Label 'Vendor Invoice No.';
        Vendor_Order_no: Label 'Vendor Order No.';
        CompanyInfo: Record "Company Information";
        CompanyPhoneNo: Label 'Phone No.';
        HomePage: Label 'Home Page';
        EmailID: Label 'Email';
        PhoneNo: Label 'Phone No.';
        Page: Label 'Page';
        ShiptoAddress: Label 'Ship to Address';
        subTotal: Label 'Subtotal';
        invDiscount: Label 'Invoice Discount';
        tax: Label 'Tax';
        TotalUSd: Label 'Total USD';
        VATAmount: Decimal;
        TaxAmount: Decimal;
        PaymentTermsLbl: Label 'Payment Terms';
        BuyerLbl: Label 'Buyer';
        ReceiveByLbl: Label 'Receive By';
        ShipmentMethodLbl: Label 'Shipment Method';


}