pageextension 50103 PageCustomerExtension extends "Customer Card"
{
    layout
    {
        addafter(Blocked)
        {
            field(RewardID; RewardID)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {

    }

}