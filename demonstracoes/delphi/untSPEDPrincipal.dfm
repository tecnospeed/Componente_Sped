object frmSpedPrincipal: TfrmSpedPrincipal
  Left = 342
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o SPED'
  ClientHeight = 414
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 801
    Height = 364
    Align = alLeft
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 799
      Height = 132
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 11
        Top = 9
        Width = 83
        Height = 13
        Caption = 'Diret'#243'rio Arquivos'
      end
      object Label8: TLabel
        Left = 11
        Top = 49
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label9: TLabel
        Left = 123
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object Label7: TLabel
        Left = 309
        Top = 48
        Width = 82
        Height = 13
        Caption = 'Nome do Arquivo'
      end
      object Label1: TLabel
        Left = 11
        Top = 89
        Width = 103
        Height = 13
        Caption = 'CNPJ SoftwareHouse'
      end
      object Label2: TLabel
        Left = 200
        Top = 89
        Width = 31
        Height = 13
        Caption = 'Token'
      end
      object edtDirArquivo: TEdit
        Left = 9
        Top = 25
        Width = 417
        Height = 21
        TabOrder = 0
        Text = 'C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\'
      end
      object edtDataIni: TDateTimePicker
        Left = 9
        Top = 64
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 1
      end
      object edtDataFim: TDateTimePicker
        Left = 122
        Top = 63
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 2
      end
      object edtNomeArquivo: TEdit
        Left = 305
        Top = 63
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'MeuSPED'
      end
      object edtCNPJ: TEdit
        Left = 9
        Top = 103
        Width = 185
        Height = 21
        TabOrder = 4
        Text = '00000000000000'
      end
      object edtToken: TEdit
        Left = 200
        Top = 103
        Width = 227
        Height = 21
        TabOrder = 5
        Text = 'aaaaaaaaaaaaaa'
      end
      object Panel3: TPanel
        Left = 436
        Top = 15
        Width = 361
        Height = 115
        Align = alRight
        BevelOuter = bvLowered
        TabOrder = 6
        object sbPreencherComp: TSpeedButton
          Left = 14
          Top = 9
          Width = 164
          Height = 31
          Caption = '1 - Preencher Componente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbPreencherCompClick
        end
        object sbIniciarApuracao: TSpeedButton
          Left = 14
          Top = 42
          Width = 164
          Height = 31
          Caption = '2 - Iniciar Apura'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbIniciarApuracaoClick
        end
        object sbGerarTX2: TSpeedButton
          Left = 14
          Top = 75
          Width = 164
          Height = 31
          Caption = '3 - Gerar TX2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbGerarTX2Click
        end
        object sbEnviar: TSpeedButton
          Left = 187
          Top = 9
          Width = 164
          Height = 31
          Caption = '4 - Enviar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbEnviarClick
        end
        object sbGerarApuracao: TSpeedButton
          Left = 187
          Top = 42
          Width = 164
          Height = 31
          Caption = '5 - Gerar Apura'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbGerarApuracaoClick
        end
        object sbConsultarApuracao: TSpeedButton
          Left = 187
          Top = 75
          Width = 164
          Height = 31
          Caption = '6 - Consultar Apura'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sbConsultarApuracaoClick
        end
      end
    end
    object pcProcessos: TPageControl
      Left = 1
      Top = 133
      Width = 799
      Height = 230
      ActivePage = tsRetornoEnvio
      Align = alClient
      TabOrder = 1
      object tsApuracao: TTabSheet
        Caption = 'Apura'#231#227'o'
        object gbRetornoApuracao: TGroupBox
          Left = 0
          Top = 0
          Width = 791
          Height = 93
          Align = alTop
          Caption = 'Retorno do Inicio Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          object mmApuracao: TMemo
            Left = 2
            Top = 15
            Width = 787
            Height = 76
            Align = alClient
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 93
          Width = 791
          Height = 93
          Align = alTop
          Caption = 'Retorno da Gera'#231#227'o da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object mmGerarApuracao: TMemo
            Left = 2
            Top = 15
            Width = 787
            Height = 76
            Align = alClient
            TabOrder = 0
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 186
          Width = 791
          Height = 94
          Align = alTop
          Caption = 'Retorno da Consulta da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object mmConsultaApuracao: TMemo
            Left = 2
            Top = 15
            Width = 787
            Height = 77
            Align = alClient
            TabOrder = 0
          end
        end
      end
      object tsTX2: TTabSheet
        Caption = 'TX2'
        ImageIndex = 1
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 791
          Height = 202
          Align = alClient
          Caption = 'Dados b'#225'sicos TX2'
          TabOrder = 0
          object mmTX2: TMemo
            Left = 2
            Top = 15
            Width = 787
            Height = 185
            Align = alClient
            TabOrder = 0
          end
        end
      end
      object tsRetornoEnvio: TTabSheet
        Caption = 'Envio'
        ImageIndex = 2
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 791
          Height = 202
          Align = alClient
          Caption = 'Retorno do Envio'
          TabOrder = 0
          object mmRetornoEnvio: TMemo
            Left = 2
            Top = 15
            Width = 787
            Height = 185
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 13
      Top = 7
      Width = 128
      Height = 13
      Caption = 'CNPJ Emissor/Empregador'
    end
    object sbLimpar: TSpeedButton
      Left = 286
      Top = 21
      Width = 126
      Height = 21
      Caption = 'Limpar Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = sbLimparClick
    end
    object edtCNPJEmissor: TEdit
      Left = 11
      Top = 23
      Width = 185
      Height = 21
      TabOrder = 0
      Text = '00000000000000'
    end
    object GroupBox4: TGroupBox
      Left = 438
      Top = 0
      Width = 366
      Height = 50
      Align = alRight
      Caption = 'Protocolo'
      TabOrder = 1
      object edtProtocolo: TEdit
        Left = 17
        Top = 19
        Width = 336
        Height = 21
        TabOrder = 0
      end
    end
  end
end
