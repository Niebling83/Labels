codeunit 50100 "Print Labels"
{
    trigger OnRun();
    begin
    end;
    
    
    procedure SetAddress(var RecRef : RecordRef; LabelZise : Option Little, Middel, Big)
 
    begin
        recref.SetRecFilter;
        case recref.Number of
            18 : begin
                customer.get(recref.RecordId);
                FormatAdr.Customer(AddressTxt,Customer);
                SortAddress;
                PrintLAbels.SettAddress(AddressTxt);
            end;            
        else
          error(NotSupported);
        end;      
        case LabelZise of
            LabelZise::Little : PrintLAbels.RunModal;
            LabelZise::Middel : PrintMiddelLabel.RunModal;
        end;
    end;
    Procedure SortAddress()
    begin
        if AddressTxt[8] = '' then begin
            AddressTxt[8] := AddressTxt[7];
            AddressTxt[7] := AddressTxt[6];
            AddressTxt[6] := AddressTxt[5];
            AddressTxt[5] := AddressTxt[4];
            AddressTxt[4] := AddressTxt[3];
            AddressTxt[3] := AddressTxt[2];
            AddressTxt[2] := AddressTxt[1];
            AddressTxt[1] := '';
        end;
    end;
    procedure SetCompanyAddress(var CompAddress:array[3] of Text)
    begin
        CompanyInfo.get();
        if CompanyInfo.Name <> '' then
        CompAddress[1] := CompanyInfo.Name;
        if CompanyInfo."Name 2" <> '' then
          CompAddress[1] += CompanyInfo."Name 2" + ' - ';
        CompAddress[2] := CompanyInfo.Address;
        CompAddress[3] := CompanyInfo.fieldcaption("home page")  + ' ' + CompanyInfo."Home Page";

    end;
    procedure LabelsActive(Label : Integer): Boolean
    begin
        if labelsetup.get then begin
            if labelSetup.active then
                case Label of
                    1 : exit(labelSetup."Little Active");
                    2 : exit(labelSetup."Middel Active");
                    3 : exit(labelSetup."Large Active");
                end;
            exit(labelsetup.Active);
        end;
            
        exit(false);
    end;
    procedure SettCompanyAddress(var Adr : array[3] of text);
    begin
        CompanyInfo.get;
        Adr[1] := CompanyInfo.Name ;
        if CompanyInfo."Name 2" <> '' then
            Adr[1] += ' - ' + CompanyInfo."Name 2";
        Adr[2] := CompanyInfo.Address;
        Adr[3] := CompanyInfo.fieldcaption("Home Page") + ' ' + CompanyInfo."Home Page";
    end;
    var
        AddressTxt : array[8]  of TEXT[50];
        Customer : Record Customer;
        CompanyInfo  : Record "Company Information";
        labelSetup : Record "Labels Setup";
        FormatAdr : Codeunit "Format Address";
        NotSupported : label 'Valgte tabel er ikke understøttet';
        PrintLAbels : Report 50100;
        PrintMiddelLabel : Report 50101;

}