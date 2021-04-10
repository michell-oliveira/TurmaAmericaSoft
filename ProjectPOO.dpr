program ProjectPOO;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uClasse.Veiculo in 'uClasse.Veiculo.pas',
  uClasse.Veiculo.Terrestre in 'uClasse.Veiculo.Terrestre.pas',
  uClasse.Veiculo.Aereo in 'uClasse.Veiculo.Aereo.pas',
  uClasse.Veiculo.Terrestre.Carro in 'uClasse.Veiculo.Terrestre.Carro.pas',
  uClasse.Veiculo.Terrestre.Caminhao in 'uClasse.Veiculo.Terrestre.Caminhao.pas',
  uClasse.Veiculo.Aereo.Aviao in 'uClasse.Veiculo.Aereo.Aviao.pas',
  uClasse.Veiculo.Aereo.Helicoptero in 'uClasse.Veiculo.Aereo.Helicoptero.pas',
  uClasse.Conexao.SqlServer in 'uClasse.Conexao.SqlServer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
