// report 50107 salesReportPT1
// {
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;
//     DefaultLayout = RDLC;
//     RDLCLayout = './custSales1.rdl';

//     dataset
//     {

//         dataitem(Customer; Customer)
//         {
//             column(CustomerNo; "No.") { }
//             column(Name; Name) { }
//             column(Sales__LCY_; "Sales (LCY)") { }

//             column(ComapanyName; COMPANYNAME) { }
//             column(Customer___Sales; Customer___Sales) { }

//         }
//     }



//     var
//         Customer___Sales: Label 'Customer - Sales List';
//         Total_Reported_Amount: Label 'Total Reported Amount of Sales (LCY)';
// }