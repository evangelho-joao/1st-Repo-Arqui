page 50102 "Page Reward Card"
{

    PageType = Card;
    SourceTable = "Table Reward";
    Caption = 'Page Reward Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
