table 50100 "Labels Setup"
{
    DataClassification = ToBeClassified;
    
    
    fields
    {
        field(1; Entry; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Active; boolean)
        {
         Caption='Aktiv';   
        }
        field(10; "Little Active"; Boolean)
        {
            Caption='Lille Aktiv';   
        }
        field(30; "Little Logo"; Blob)
        {
            Caption='Logo';   
            Subtype = Bitmap;
        }
        field(31; "Little Logo Placemant"; Option)
        {
            Caption='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaption = ' ,Venstre,Højre';
        }
        field(40; "Little CompAdr. Placemant"; Option)
        {
            Caption='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaption = ' ,Top,Bund';
        }
        field(100; "Middel Active"; Boolean)
        {
            Caption='Mellem Aktiv';   
        }
        field(130; "Middel Logo"; Blob)
        {
            Caption='Logo';   
            Subtype = Bitmap;
        }
        field(131; "Middel Logo Placemant"; Option)
        {
            Caption='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaption = ' ,Venstre,Højre';
        }
        field(140; "Middel CompAdr. Placemant"; Option)
        {
            Caption='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaption = ' ,Top,Bund';
        }
        field(200; "Large Active"; Boolean)
        {
            Caption='Mellem Aktiv';   
        }
        field(230; "Large Logo"; Blob)
        {
            Caption='Logo';   
            Subtype = Bitmap;
        }
        field(231; "Large Logo Placemant"; Option)
        {
            Caption='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaption = ' ,Venstre,Højre';
        }
        field(240; "Large CompAdr. Placemant"; Option)
        {
            Caption='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaption= ' ,Top,Bund';
        }

    }

    keys
    {
        key(PK;Entry)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}