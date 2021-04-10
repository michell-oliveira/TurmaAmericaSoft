unit uClasse.Veiculo.Terrestre.Carro;

interface

uses
  uClasse.Veiculo.Terrestre,  System.SysUtils, System.DateUtils;

type
  TCarro = class(TTerrestre)
    private
    public
      Tipo_Combustao: string; //injeção ou carburado
      Tipo_Cambio: string;
      Piloto_automatico: boolean;
      rabicho: boolean;
      Tamanho_porta_malas: double;
      retrovisor_interno_digital: boolean;

    function RetornaAplicacaoUso: string; override;
    function RetornarProximaTrocaOleo: TDateTime; override;
  end;

implementation


{ TCarro }

function TCarro.RetornaAplicacaoUso: string;
begin
  result:= 'Veiculo Carro: Aplicação Terrestre';
end;

function TCarro.RetornarProximaTrocaOleo: TDateTime;
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
