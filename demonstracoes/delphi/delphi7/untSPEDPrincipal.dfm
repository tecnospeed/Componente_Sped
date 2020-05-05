object frmSpedPrincipal: TfrmSpedPrincipal
  Left = 361
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o SPED'
  ClientHeight = 414
  ClientWidth = 958
  Color = clGradientInactiveCaption
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
    Width = 457
    Height = 364
    Align = alLeft
    Color = clGradientInactiveCaption
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 455
      Height = 165
      Align = alTop
      Caption = 'Diret'#243'rios'
      TabOrder = 0
      object Label4: TLabel
        Left = 18
        Top = 20
        Width = 36
        Height = 13
        Caption = 'Arquivo'
      end
      object Label5: TLabel
        Left = 16
        Top = 65
        Width = 63
        Height = 13
        Caption = 'Configura'#231#227'o'
      end
      object Label6: TLabel
        Left = 16
        Top = 113
        Width = 19
        Height = 13
        Caption = 'Erro'
      end
      object edtDirArquivo: TEdit
        Left = 16
        Top = 36
        Width = 417
        Height = 21
        TabOrder = 0
      end
      object edtDirConfiguracao: TEdit
        Left = 16
        Top = 81
        Width = 417
        Height = 21
        Hint = 'Bloqueado pois tem que ser o diret'#243'rio padr'#227'o do componente'
        ReadOnly = True
        TabOrder = 1
      end
      object edtDirErro: TEdit
        Left = 16
        Top = 129
        Width = 417
        Height = 21
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 238
      Width = 455
      Height = 113
      Align = alTop
      Caption = 'Software House'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 20
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label2: TLabel
        Left = 16
        Top = 65
        Width = 31
        Height = 13
        Caption = 'Token'
      end
      object edtCNPJ: TEdit
        Left = 16
        Top = 36
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object edtToken: TEdit
        Left = 16
        Top = 81
        Width = 417
        Height = 21
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 166
      Width = 455
      Height = 72
      Align = alTop
      TabOrder = 2
      object Label8: TLabel
        Left = 17
        Top = 19
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label9: TLabel
        Left = 137
        Top = 19
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object Label7: TLabel
        Left = 316
        Top = 21
        Width = 82
        Height = 13
        Caption = 'Nome do Arquivo'
      end
      object edtDataIni: TDateTimePicker
        Left = 16
        Top = 36
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 0
      end
      object edtDataFim: TDateTimePicker
        Left = 136
        Top = 36
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 1
      end
      object edtNomeArquivo: TEdit
        Left = 312
        Top = 36
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'MeuSPED'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 958
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    TabOrder = 1
    object Label3: TLabel
      Left = 18
      Top = 7
      Width = 66
      Height = 13
      Caption = 'CNPJ Emissor'
    end
    object sbLimpar: TSpeedButton
      Left = 322
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
      Left = 16
      Top = 23
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object GroupBox4: TGroupBox
      Left = 456
      Top = 0
      Width = 502
      Height = 50
      Align = alRight
      Caption = 'Protocolo'
      TabOrder = 1
      object edtProtocolo: TEdit
        Left = 17
        Top = 19
        Width = 464
        Height = 21
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 455
    Top = 50
    Width = 503
    Height = 364
    Align = alRight
    Color = clGradientInactiveCaption
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 501
      Height = 55
      Align = alTop
      BevelOuter = bvLowered
      Color = clGradientInactiveCaption
      TabOrder = 0
      object sbPreencherComp: TSpeedButton
        Left = 6
        Top = 3
        Width = 164
        Height = 21
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
        Left = 174
        Top = 3
        Width = 160
        Height = 21
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
        Left = 338
        Top = 3
        Width = 160
        Height = 21
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
        Left = 6
        Top = 27
        Width = 164
        Height = 21
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
        Left = 174
        Top = 27
        Width = 160
        Height = 21
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
        Left = 338
        Top = 27
        Width = 160
        Height = 21
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
    object pcProcessos: TPageControl
      Left = 1
      Top = 56
      Width = 501
      Height = 307
      ActivePage = tsApuracao
      Align = alClient
      TabOrder = 1
      object tsApuracao: TTabSheet
        Caption = 'Apura'#231#227'o'
        object gbRetornoApuracao: TGroupBox
          Left = 0
          Top = 0
          Width = 493
          Height = 93
          Align = alTop
          Caption = 'Retorno do Inicio Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          object mmApuracao: TMemo
            Left = 2
            Top = 15
            Width = 489
            Height = 76
            Align = alClient
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 93
          Width = 493
          Height = 93
          Align = alTop
          Caption = 'Retorno da Gera'#231#227'o da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object mmGerarApuracao: TMemo
            Left = 2
            Top = 15
            Width = 489
            Height = 76
            Align = alClient
            TabOrder = 0
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 186
          Width = 493
          Height = 94
          Align = alTop
          Caption = 'Retorno da Consulta da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object mmConsultaApuracao: TMemo
            Left = 2
            Top = 15
            Width = 489
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
          Width = 493
          Height = 279
          Align = alClient
          Caption = 'Dados b'#225'sicos TX2'
          TabOrder = 0
          object mmTX2: TMemo
            Left = 2
            Top = 15
            Width = 489
            Height = 262
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
          Width = 493
          Height = 279
          Align = alClient
          Caption = 'Retorno do Envio'
          TabOrder = 0
          object mmRetornoEnvio: TMemo
            Left = 2
            Top = 15
            Width = 489
            Height = 262
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
  end
end
