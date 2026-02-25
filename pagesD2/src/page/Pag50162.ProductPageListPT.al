page 50162 ProductPageListPT
{
    PageType = List;
    SourceTable = PageDemo2PT;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = productCardpagePT;

    layout
    {
        area(content)
        {
            repeater(Product)
            {
                field("Product Code";Rec."Product Code") { 
                    ApplicationArea = All;
                    Caption = 'code';
                 }
                field("Product Name";Rec."Product Name") { 
                    ApplicationArea = All;
                    Caption = 'Name';
                }
            }
        }
    }
}