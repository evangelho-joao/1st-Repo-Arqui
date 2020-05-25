table 50100 "Table Reward"
{
    Caption = 'Table Reward';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reward ID"; Code[20])
        {
            Caption = 'Reward ID';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Discount Percentage"; Decimal)
        {
            Caption = 'Discount Percentage';
            DataClassification = ToBeClassified;
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
        field(4; "Last Modified Date"; Date)
        {
            Caption = 'Last Modified Date';
            DataClassification = ToBeClassified;
        }
        //asdasdasd
    }
    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()

    begin
        lastDateModified()
    end;

    trigger OnModify()

    begin
        lastDateModified()
    end;

    trigger OnRename()

    begin
        lastDateModified()
    end;

    trigger OnDelete()

    begin

    end;

    procedure lastDateModified()

    begin
        "Last Modified Date" := Today;
    end;
}
