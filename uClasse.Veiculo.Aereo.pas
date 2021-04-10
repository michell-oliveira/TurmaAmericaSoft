unit uClasse.Veiculo.Aereo;

interface

uses
  uClasse.Veiculo;

type
  TAereo = class(TVeiculo)
    private
    public
      Altura_maxima: currency;
      Tipo_propulsor: string;
      Qtd_Pilotos: integer;
      breve: string;
      tipo_transporte: string; //carga ou pessoas
      possui_armamento: boolean;
      tipo_aplicacao: string; //civil/militar/resgate
      possui_piloto_automatico: boolean;
  end;

implementation

end.
