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
         CaptionML = ENU='Active', DAN='Aktiv';   
        }
        field(10; "Little Active"; Boolean)
        {
            CaptionML = ENU='Little Active', DAN='Lille Aktiv';   
        }
        field(30; "Little Logo"; Blob)
        {
            CaptionML = ENU='Logo', DAN='Logo';   
            Subtype = Bitmap;
        }
        field(31; "Little Logo Placemant"; Option)
        {
            CaptionML = ENU='Logo placement', DAN='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaptionML = ENU = ' ,Left,Right',DAN = ' ,Venstre,Højre';
        }
        field(40; "Little CompAdr. Placemant"; Option)
        {
            CaptionML = ENU='Company Info placementt', DAN='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaptionML = ENU = ' ,Top,Buttom', DAN = ' ,Top,Bund';
        }
        field(100; "Middel Active"; Boolean)
        {
            CaptionML = ENU='Middle Active', DAN='Mellem Aktiv';   
        }
        field(130; "Middel Logo"; Blob)
        {
            CaptionML = ENU='Logo', DAN='Logo';   
            Subtype = Bitmap;
        }
        field(131; "Middel Logo Placemant"; Option)
        {
            CaptionML = ENU='Logo placement', DAN='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaptionML = ENU = ' ,Left,Right',DAN = ' ,Venstre,Højre';
        }
        field(140; "Middel CompAdr. Placemant"; Option)
        {
            CaptionML = ENU='Company Info placementt', DAN='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaptionML = ENU = ' ,Top,Buttom', DAN = ' ,Top,Bund';
        }
        field(200; "Large Active"; Boolean)
        {
            CaptionML = ENU='Middle Active', DAN='Mellem Aktiv';   
        }
        field(230; "Large Logo"; Blob)
        {
            CaptionML = ENU='Logo', DAN='Logo';   
            Subtype = Bitmap;
        }
        field(231; "Large Logo Placemant"; Option)
        {
            CaptionML = ENU='Logo placement', DAN='Logo placering';   
            OptionMembers = " ",Left, Right;
            OptionCaptionML = ENU = ' ,Left,Right',DAN = ' ,Venstre,Højre';
        }
        field(240; "Large CompAdr. Placemant"; Option)
        {
            CaptionML = ENU='Company Info placementt', DAN='Virksomheds information';   
            OptionMembers = " ",Top, Buttom;
            OptionCaptionML = ENU = ' ,Top,Buttom', DAN = ' ,Top,Bund';
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