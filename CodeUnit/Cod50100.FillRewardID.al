codeunit 50100 "Fill Reward ID"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Reward: Record "Table Reward";
    begin
        if Reward.IsEmpty() then
            InsertDefaultReward();
    end;

    procedure InsertRewardLevel(ID: Code[30]; Description: Text[250]; Discount: Decimal)
    var
        Reward: Record "Table Reward";
    begin
        Reward.Init();
        Reward."Reward ID" := ID;
        Reward.Description := Description;
        Reward."Discount Percentage" := Discount;
        Reward.Insert();
    end;

    procedure InsertDefaultReward();
    begin
        InsertRewardLevel('Gold', 'Gold Level', 20);
        InsertRewardLevel('Silver', 'Silver Level', 20);
        InsertRewardLevel('Bronze', 'Bronze Level', 20);
    end;

}