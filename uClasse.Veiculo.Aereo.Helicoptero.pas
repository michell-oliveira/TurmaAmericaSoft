unit uClasse.Veiculo.Aereo.Helicoptero;

interface

uses
  uClasse.Veiculo.Aereo, System.SysUtils, System.DateUtils;

type
  THelicoptero = class(TAereo)
    private
    public
      qtd_helices: integer;
      possui_turbina: boolean; //tipo_aplicacao: militar/civil/resgate

    function RetornaAplicacaoUso: string; override;
    function RetornarProximaTrocaOleo: TDateTime; override;
  end;


implementation

{ THelicoptero }

function THelicoptero.RetornaAplicacaoUso: string;
begin
  result:= 'Veiculo Helicóptero: Aplicação Aéreo';
end;

function THelicoptero.RetornarProximaTrocaOleo: TDateTime;
begin
  if DiasMaximoProximaTrocaOleo > 0 then
    result:=  StrToDateTime(FormatDateTime('dd.mm.yyyy', incDay(DataUltimaTrocaOleo, DiasMaximoProximaTrocaOleo)))
  else
  begin
    raise Exception.Create('Quantidade de dias para próxima troca de óleo deve ser maior do que 0.');
    abort;
  end;
end;

end.
