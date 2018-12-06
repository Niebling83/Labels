page 50100 "Label Setup"
{
    PageType = Card;
    SourceTable = "Labels Setup";
    Editable = true;

    layout
    {
        area(content)
        {
            group(Generel)
            {
                Caption='Generelt';
                field(Activ;Active){}
            }
            group(LittleLabel)
            {
                Caption ='Lille label';
                field("Little active";"Little active")
                {
                    Editable=true;
                }
                field("Little Logo";"Little Logo"){}
                field("Little Logo Placemant";"Little Logo Placemant"){}
                field("Little Company Adresse Placemant";"Little CompAdr. Placemant"){}
            }
            group(MiddelLabel)
            {
                Caption='Mellem label';
                field("Middel Active";"Middel Active"){}
                field("Middel Logo";"Middel Logo"){}
                field("Middel Logo Placemant";"Middel Logo Placemant"){}
                field("Middel Company Adresse Placemant";"Middel CompAdr. Placemant"){}
            }
            group(LargeLabel)
            {
                Caption='Stor label';
                field("Large Active";"Large Active"){}
                field("Large Logo";"Large Logo"){}
                field("Large Logo Placemant";"Large Logo Placemant"){}
                field("Large Company Adresse Placemant";"Large CompAdr. Placemant"){}
            }
        }
    }
    var
     AddressTxt : array[8] of text[50];
}