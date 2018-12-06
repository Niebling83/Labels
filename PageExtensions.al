pageextension 50100 "Customer card" extends "Customer Card"
{
    layout
    {
       // Add changes to page layout here        
    }

    actions
    {
        // Add changes to page actions her
        addlast(Creation)
        {
            group(PrintLabelGroup)
            {
                Caption = 'Print label';
                image = PrintCover;
                action(PrintSmallLabel)
                {
                Caption = 'Print lille label';
                image = Print;
                trigger OnAction();
                begin
                    if not LabelSetAddress.LabelsActive(1) then
                        error(NotActive);
                    Clear(LabelSetAddress);
                    recref.gettable(rec);
                    LabelSetAddress.SetAddress(recref,0);
                end;
                }
                action(PrintMiddelLabel)
                {
                Caption = 'Print mellem label';
                image = PrintCover;

                trigger OnAction();
                begin
                    if not LabelSetAddress.LabelsActive(2) then
                        error(NotActive);
                    Clear(LabelSetAddress);
                    recref.gettable(rec);
                    LabelSetAddress.SetAddress(recref,1);
                end;
                }

                action(PrintLargeLabel)
                {
                Caption = 'Print stor label';
                image = PrintCover;

                trigger OnAction();
                begin
                    message('Stor Label')
                end;
                }

            }
        }        
    }
    var
       LabelSetAddress : Codeunit 50100;
       RecRef : RecordRef;
       NotActive : Label 'Label er ikke aktiv!';
}
pageextension 50101 RoleCenter extends "Order Processor Role Center"
{
    actions
    {
        addlast(Processing)
        {
                group("Labels")
                {
                    Caption = 'Labels';
                    Image = PrintCover;
                    
                action("Setup")
                {
                    image = Setup;
                    Caption = 'Label opsætning';
                    ApplicationArea = All;
                    RunObject = page "Label Setup";
                    
                }
            }
        }
    }
}
