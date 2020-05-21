page 50100 "Page50100.PageReward"
{

    PageType = List;
    SourceTable = "Table Reward";
    Caption = 'Page50100.PageReward';
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
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
