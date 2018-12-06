report 50100 PrintLabel
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Report/Labels.rdl';
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem(LabelHead; Integer)
        {
            DataItemTableView = Sorting(number) where(Number = filter(1));
            column(Adr_1; Address[1]){}
            column(Adr_2; Address[2]){}
            column(Adr_3; Address[3]){}
            column(Adr_4; Address[4]){}
            column(Adr_5; Address[5]){}
            column(Adr_6; Address[6]){}
            column(Adr_7; Address[7]){}
            column(Adr_8; Address[8]){}
            dataitem(LabelsSetup;"Labels Setup")
            {
                DataItemTableView = sorting(Entry);
                CalcFields = "Little Logo";
                column(Little_Logo;"Little Logo"){}
                column(Little_Logo_Placemant;"Little Logo Placemant"){}
                column(Little_Company_Adresse_Placemant;"Little CompAdr. Placemant"){}
                column(LogoLeft;LogoLeft){}
                column(LogoRight;LogoRight){}
                column(CompanyInfoTop;CompanyInfoTop){}
                column(CompanyInfoBottom;CompanyInfoBottom){}
                column(CompanyAdr_1;CompanyAdr[1]){}
                column(CompanyAdr_2;CompanyAdr[2]){}
                column(CompanyAdr_3;CompanyAdr[3]){}
                trigger OnAfterGetRecord();
                begin
                    LogoLeft := "Little Logo Placemant" = LabelsSetup."Little Logo Placemant"::Left;
                    LogoRight := "Little Logo Placemant" = LabelsSetup."Little Logo Placemant"::Right;
                    CompanyInfoTop := "Little CompAdr. Placemant" = LabelsSetup."Little CompAdr. Placemant"::Top;
                    CompanyInfoBottom := "Little CompAdr. Placemant" = LabelsSetup."Little CompAdr. Placemant"::Buttom;
                    Printlabels.SetCompanyAddress(CompanyAdr);                    
                end;
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    
    procedure SettAddress(var Adr :array[8] of text[50]);
    begin
        CopyArray(address,Adr,1);
    end;
    var
    Address : array[8] of text[50];
    CompanyAdr : array[3] of text;
    PrintLabels : Codeunit "Print Labels";
    LogoLeft : Boolean;
    LogoRight : Boolean;
    CompanyInfoTop : Boolean;
    CompanyInfoBottom : Boolean;
}
report 50101 PrintLabelMiddel
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Report/LabelsMiddel.rdl';
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem(LabelHead; Integer)
        {
            DataItemTableView = Sorting(Number) where(Number = filter(1));
            column(Adr_1; Address[1]){}
            column(Adr_2; Address[2]){}
            column(Adr_3; Address[3]){}
            column(Adr_4; Address[4]){}
            column(Adr_5; Address[5]){}
            column(Adr_6; Address[6]){}
            column(Adr_7; Address[7]){}
            column(Adr_8; Address[8]){}
            dataitem(LabelsSetup;"Labels Setup")
            {
                DataItemTableView = sorting(Entry);
                CalcFields = "Middel Logo";
                column(Middel_Logo;"Middel Logo"){}
                column(Middel_Logo_Placemant;"Middel Logo Placemant"){}
                column(Middel_Company_Adresse_Placemant;"Middel CompAdr. Placemant"){}
                column(LogoLeft;LogoLeft){}
                column(LogoRight;LogoRight){}
                column(CompanyInfoTop;CompanyInfoTop){}
                column(CompanyInfoBottom;CompanyInfoBottom){}
                column(CompanyAdr_1;CompanyAdr[1]){}
                column(CompanyAdr_2;CompanyAdr[2]){}
                column(CompanyAdr_3;CompanyAdr[3]){}
                trigger OnAfterGetRecord();
                begin
                    LogoLeft := "Middel Logo Placemant" = LabelsSetup."Middel Logo Placemant"::Left;
                    LogoRight := "Middel Logo Placemant" = LabelsSetup."Middel Logo Placemant"::Right;
                    CompanyInfoTop := "Middel CompAdr. Placemant" = LabelsSetup."Middel CompAdr. Placemant"::Top;
                    CompanyInfoBottom := "Middel CompAdr. Placemant" = LabelsSetup."Middel CompAdr. Placemant"::Buttom;
                    Printlabels.SetCompanyAddress(CompanyAdr);                    
                end;
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    
    procedure SettAddress(var Adr :array[8] of text[50]);
    begin
        CopyArray(address,Adr,1);
    end;
    var
    Address : array[8] of text[50];
    CompanyAdr : array[3] of text;
    PrintLabels : Codeunit "Print Labels";
    LogoLeft : Boolean;
    LogoRight : Boolean;
    CompanyInfoTop : Boolean;
    CompanyInfoBottom : Boolean;
}