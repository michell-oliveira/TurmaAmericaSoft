object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 487
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 225
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 374
    DesignSize = (
      418
      225)
    object Label1: TLabel
      Left = 256
      Top = 32
      Width = 139
      Height = 13
      Caption = 'Data da '#250'ltima troca de '#243'leo:'
    end
    object Label2: TLabel
      Left = 256
      Top = 79
      Width = 156
      Height = 78
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Quantidade de dias para pr'#243'xima troca de '#243'leo'
      WordWrap = True
    end
    object BtnPreencher: TButton
      Left = 111
      Top = 163
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Preencher Classe'
      TabOrder = 5
      OnClick = BtnPreencherClick
    end
    object EdTipo: TLabeledEdit
      Left = 111
      Top = 25
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = 'Tipo'
      LabelPosition = lpLeft
      LabelSpacing = 10
      TabOrder = 0
    end
    object EdMarca: TLabeledEdit
      Left = 111
      Top = 52
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca'
      LabelPosition = lpLeft
      LabelSpacing = 10
      TabOrder = 1
    end
    object EdKmRodados: TLabeledEdit
      Left = 111
      Top = 106
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'Qtd Km a percorrer'
      LabelPosition = lpLeft
      LabelSpacing = 10
      TabOrder = 3
    end
    object EdLitrosConsumidos: TLabeledEdit
      Left = 111
      Top = 133
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Litros consumidos'
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      LabelSpacing = 10
      TabOrder = 4
    end
    object EdTara: TLabeledEdit
      Left = 111
      Top = 79
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Tara'
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      LabelSpacing = 10
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 111
      Top = 194
      Width = 121
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 6
    end
    object EdDataUltimaTrocaOleo: TDateTimePicker
      Left = 256
      Top = 52
      Width = 145
      Height = 21
      Date = 44290.000000000000000000
      Time = 0.811584363422298300
      TabOrder = 7
    end
    object EdDiasProximaTrocaOleo: TSpinEdit
      Left = 256
      Top = 106
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Value = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 418
    Height = 190
    Align = alClient
    TabOrder = 1
    ExplicitTop = 225
    ExplicitWidth = 374
    ExplicitHeight = 262
    object MemoExibicao: TMemo
      Left = 1
      Top = 1
      Width = 416
      Height = 188
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 372
      ExplicitHeight = 260
    end
  end
  object RgClasse: TRadioGroup
    Left = 0
    Top = 225
    Width = 418
    Height = 72
    Align = alTop
    Caption = 'Polimorfismo'
    Columns = 4
    Items.Strings = (
      'Caminh'#227'o'
      'Carro'
      'Avi'#227'o'
      'Helic'#243'ptero')
    TabOrder = 2
    OnClick = RgClasseClick
    ExplicitWidth = 374
  end
end
