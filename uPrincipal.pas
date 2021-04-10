unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uClasse.Veiculo.Terrestre.Caminhao,
  uClasse.Veiculo.Terrestre.carro,
  uClasse.Veiculo.Aereo.Aviao,
  uClasse.Veiculo.Aereo.Helicoptero,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Samples.Spin, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    BtnPreencher: TButton;
    EdTipo: TLabeledEdit;
    EdMarca: TLabeledEdit;
    EdKmRodados: TLabeledEdit;
    EdLitrosConsumidos: TLabeledEdit;
    Panel2: TPanel;
    MemoExibicao: TMemo;
    EdTara: TLabeledEdit;
    BitBtn1: TBitBtn;
    RgClasse: TRadioGroup;
    EdDataUltimaTrocaOleo: TDateTimePicker;
    Label1: TLabel;
    EdDiasProximaTrocaOleo: TSpinEdit;
    Label2: TLabel;
    procedure BtnPreencherClick(Sender: TObject);
    procedure RgClasseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnPreencherClick(Sender: TObject);
Var
  lCaminhao : TCaminhao;
begin
  lCaminhao := TCaminhao.Create;

  try
    lCaminhao.Tipo := trim(EdTipo.Text);  // propriedade da classe pai TVeiculo
    lCaminhao.Marca := trim(EdMarca.Text);  // propriedade da classe pai TVeiculo
    lCaminhao.tara := StrToFloat(trim(EdTara.Text)); // propriedade da classe TCaminhao
    lCaminhao.km_percorridos := StrToFloat(trim(EdKmRodados.Text));
    lCaminhao.LitrosConsumidos := StrToFloat(trim(EdLitrosConsumidos.text));
    lCaminhao.autonomia := lCaminhao.CalcularAutonomia(lCaminhao.km_percorridos, lCaminhao.LitrosConsumidos);
    lCaminhao.DataUltimaTrocaOleo := EdDataUltimaTrocaOleo.DateTime;
    lCaminhao.DiasMaximoProximaTrocaOleo := EdDiasProximaTrocaOleo.Value;
    lCaminhao.DataProximaTrocaOleo := lCaminhao.RetornarProximaTrocaOleo;

    MemoExibicao.Lines.Clear;
    MemoExibicao.Lines.Add('Dados do veículo: ' + lCaminhao.Tipo + '.');
    MemoExibicao.Lines.Add('Marca: ' + lCaminhao.Marca + '.');
    MemoExibicao.Lines.Add('Autonomia: ' + FormatFloat('#.##0.00',lCaminhao.autonomia) + ' Km/L.');
    MemoExibicao.Lines.Add('Tara: ' + FloatToStr(lCaminhao.tara) + '.');
    MemoExibicao.Lines.Add('Km Percorridos: ' + FloatToStr(lCaminhao.km_percorridos) + '.');
    MemoExibicao.Lines.Add('Litros consumidos: ' + FloatToStr(lCaminhao.LitrosConsumidos) + '.');
    MemoExibicao.Lines.Add('Ao percorrer ' + FloatToStr(lCaminhao.km_percorridos) + ' km com  ' +
      FloatToStr(lCaminhao.LitrosConsumidos) + ' litros a autonomia foi de ' +
      FormatFloat('#.##0.00',lCaminhao.autonomia) + ' km por litro.');
    MemoExibicao.Lines.Add('');
    MemoExibicao.Lines.Add('Data da última troca de óleo: ' + DateTimeToStr(lCaminhao.DataUltimaTrocaOleo));
    MemoExibicao.Lines.Add('Qtde de dias para próxima troca de óleo: ' + IntToStr(lCaminhao.DiasMaximoProximaTrocaOleo));
    MemoExibicao.Lines.Add('Data da próxima troca de óleo: ' + DateTimeToStr(lCaminhao.DataProximaTrocaOleo));
  finally
    lCaminhao.free;
  end;
end;

procedure TForm1.RgClasseClick(Sender: TObject);
Var
  lCaminhao: TCaminhao;
  lCarro: TCarro;
  lAviao: TAviao;
  lHelicoptero: THelicoptero;
begin
  lCaminhao := TCaminhao.Create;
  lCarro := TCarro.Create;
  lAviao := TAviao.Create;
  lHelicoptero:= THelicoptero.Create;

  try
    case RgClasse.ItemIndex of
      0: ShowMessage(lCaminhao.RetornaAplicacaoUso);
      1: ShowMessage(lCarro.RetornaAplicacaoUso);
      2: ShowMessage(lAviao.RetornaAplicacaoUso);
      3: ShowMessage(lHelicoptero.RetornaAplicacaoUso);
    end;
  finally
    lCaminhao.Free;
    lCarro.Free;
    lAviao.Free;
    lHelicoptero.Free;
  end;
end;

end.
