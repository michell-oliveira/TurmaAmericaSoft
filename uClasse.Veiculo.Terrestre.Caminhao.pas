unit uClasse.Veiculo.Terrestre.Caminhao;

interface

uses
  uClasse.Veiculo.Terrestre, System.SysUtils, System.DateUtils;

type
  TCaminhao = class(TTerrestre)
    private
    public
      DataInstalacao_tacografo: Tdatetime;
      DataValidade_tacografo: Tdatetime;
      QtdEixos: integer;
      TipoCarroceria: string;
      TamanhoCarroceria: string;
      TipoCarga: string;
      tara: double;
      PesoMaximo: double;

    function RetornaAplicacaoUso: string; override;
    function RetornarProximaTrocaOleo: TDateTime; override;
  end;

implementation


{ TCaminhao }

function TCaminhao.RetornaAplicacaoUso: string;
begin
  inherited;
  result:= tipo + ' - Veiculo Caminhão: Aplicação Terrestre';
end;

function TCaminhao.RetornarProximaTrocaOleo: TDateTime;
begin
  if DiasMaximoProximaTrocaOleo > 0 then
    result:=  StrToDateTime(StringReplace(FormatDateTime('dd.mm.yyyy', incDay(DataUltimaTrocaOleo, DiasMaximoProximaTrocaOleo)),'.','/', [rfReplaceAll]))
  else
  begin
    raise Exception.Create('Quantidade de dias para próxima troca de óleo deve ser maior do que 0.');
    abort;
  end;
end;

end.
