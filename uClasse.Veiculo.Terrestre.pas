unit uClasse.Veiculo.Terrestre;

interface

uses
  uClasse.Veiculo, System.SysUtils;

type
  TTerrestre = class(TVeiculo)
    private
    public
      Valor_Pedagio : currency;
      Tipo_tracao: string;
      IPVA: Currency;
      DPVAT: Currency;
      Habilitacao: string;
      placa: string;
      km_percorridos: double;
  end;

implementation

{ TTerrestre }

end.
