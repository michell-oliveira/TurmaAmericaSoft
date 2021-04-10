unit uClasse.Veiculo;

interface

uses
  uClasse.Conexao.SqlServer, System.SysUtils;

type
  TVeiculo = class
    private
      Ftipo: string;
      Fcodigo: integer;
      Fcor: string;
      Ftamanho: double;
      FqtdPortas: integer;
      Fcombustivel: string;
      FAceitaPassageiros: boolean;
      FMarca: string;
      FPossuiComputadorBordo: boolean;
      FCapacidadeCarga: double;
      FQtdAcentos: integer;
      Fautonomia: double;
      FLitrosConsumidos: double;
      FDataUltimaTrocaOleo: TDateTime;
      FDiasMaximoProximaTrocaOleo: integer;
    FDataProximaTrocaOleo: TDateTime;
      function GetTipo: string;
      procedure SetTipo(const Value: string);
      procedure setTamanho(const Value: double);
      procedure SetCapacidadeCarga(const Value: double);
      procedure SetQtdAcentos(const Value: integer);
    public
      property tipo: string read GetTipo write SetTipo;
      property codigo: integer read Fcodigo write Fcodigo;
      property cor: string read Fcor write Fcor;
      property tamanho: double read Ftamanho write setTamanho;
      property qtdPortas: integer read FqtdPortas write FqtdPortas;
      property combustivel: string read Fcombustivel write Fcombustivel;
      property AceitaPassageiros: boolean read FAceitaPassageiros write FAceitaPassageiros;
      property Marca: string read FMarca write FMarca;
      property PossuiComputadorBordo: boolean read FPossuiComputadorBordo write FPossuiComputadorBordo;
      property CapacidadeCarga: double read FCapacidadeCarga write SetCapacidadeCarga;
      property QtdAcentos: integer read FQtdAcentos write SetQtdAcentos;
      property autonomia: double read Fautonomia write Fautonomia;
      property LitrosConsumidos: double read FLitrosConsumidos write FLitrosConsumidos;
      property DataUltimaTrocaOleo: TDateTime read FDataUltimaTrocaOleo write FDataUltimaTrocaOleo;
      property DiasMaximoProximaTrocaOleo: integer read FDiasMaximoProximaTrocaOleo write FDiasMaximoProximaTrocaOleo;
      property DataProximaTrocaOleo: TDateTime read FDataProximaTrocaOleo write FDataProximaTrocaOleo;

      function CalcularAutonomia(pQtdKmPercorrido, pQtdLitrosConsumidos: double): double; overload;
      function CalcularAutonomia(pQtdKmPercorrido: integer; pQtdLitrosConsumidos: double): double; overload;
      function RetornaAplicacaoUso: string; virtual;
      function RetornarProximaTrocaOleo: TDateTime; virtual; abstract;
  end;

implementation

{ TVeiculo }


{ TVeiculo }

function TVeiculo.CalcularAutonomia(pQtdKmPercorrido: integer;
  pQtdLitrosConsumidos: double): double;
begin
  Result:= pQtdKmPercorrido / pQtdLitrosConsumidos;
end;

function TVeiculo.CalcularAutonomia(pQtdKmPercorrido,
  pQtdLitrosConsumidos: double): double;
begin
  Result:= pQtdKmPercorrido / pQtdLitrosConsumidos;
end;

function TVeiculo.GetTipo: string;
begin
  Result := FTipo;
end;

function TVeiculo.RetornaAplicacaoUso: string;
begin
  tipo := 'Classe Pai TVeiculo!!!';
  result := 'Classe Pai TVeiculo!!!';
end;

procedure TVeiculo.SetCapacidadeCarga(const Value: double);
begin
  if value > 0 then  
    FCapacidadeCarga := Value
  else
  begin
    raise Exception.Create('Capacidade de carga precisa ser maior do que 0');
    abort;
  end;
end;

procedure TVeiculo.SetQtdAcentos(const Value: integer);
begin
  if Value > 0 then  
    FQtdAcentos := Value
  else
  begin
    raise Exception.Create('Quantidade de acentos precisa ser maior do que 0');
    abort;
  end;
  
end;

procedure TVeiculo.setTamanho(const Value: double);
begin
  if Value > 0 then  
    Ftamanho := Value
  else
  begin
    raise Exception.Create('Tamanho precisa ser maior do que 0');
    abort;
  end;
end;

procedure TVeiculo.SetTipo(const Value: string);
begin
  FTipo := Value;
end;

end.
