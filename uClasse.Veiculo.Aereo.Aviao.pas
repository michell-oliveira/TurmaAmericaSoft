unit uClasse.Veiculo.Aereo.Aviao;

interface

uses
  uClasse.Veiculo.Aereo, System.SysUtils, System.DateUtils;

type
  TAviao = class(TAereo)
    private
    public
      pressurizacao: boolean;
      qtd_asas: integer;

    function RetornaAplicacaoUso: string; override;
    function RetornarProximaTrocaOleo: TDateTime; override;
  end;

implementation

{ TAviao }

function TAviao.RetornaAplicacaoUso: string;
begin
  result:= 'Veiculo Aviao: Aplicação Aéreo';
end;

function TAviao.RetornarProximaTrocaOleo: TDateTime;
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
