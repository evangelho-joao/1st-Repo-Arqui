tableextension 50101 TableCustomerExtension extends "Customer"
{
    fields
    {
        field(180; RewardID; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Table Reward";
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}