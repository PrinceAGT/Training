report 50100 MyReportPT
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './testPT.rdl';
    Caption = 'ReportTestingPT';


    dataset
    {
        dataitem(DataItemName; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Base_Unit_of_Measure; "Base Unit of Measure")
            {

            }
            column(Unit_Price; "Unit Price")
            {

            }
            column(Inventory; Inventory)
            {

            }
            column(Blocked; Blocked)
            {

            }
        }
    }

    // requestpage
    // {
    //     AboutTitle = 'Teaching tip title';
    //     AboutText = 'Teaching tip content';
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {

    //             }
    //         }
    //     }
    // }

}