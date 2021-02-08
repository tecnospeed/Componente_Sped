object frmSpedPrincipal: TfrmSpedPrincipal
  Left = 484
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o SPED'
  ClientHeight = 821
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 1025
    Height = 771
    Align = alLeft
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 1023
      Height = 176
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 11
        Top = 9
        Width = 173
        Height = 13
        Caption = 'Diret'#243'rio Configura'#231#245'es (Arquivos.ini)'
      end
      object Label8: TLabel
        Left = 11
        Top = 89
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label9: TLabel
        Left = 123
        Top = 89
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object Label7: TLabel
        Left = 472
        Top = 48
        Width = 138
        Height = 13
        Caption = 'Nome do Arquivo de Retorno'
      end
      object Label1: TLabel
        Left = 11
        Top = 129
        Width = 103
        Height = 13
        Caption = 'CNPJ SoftwareHouse'
      end
      object Label2: TLabel
        Left = 200
        Top = 129
        Width = 31
        Height = 13
        Caption = 'Token'
      end
      object Label5: TLabel
        Left = 8
        Top = 48
        Width = 129
        Height = 13
        Caption = 'Diret'#243'rio Arquivo de retorno'
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
        Top = 104
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 1
      end
      object edtDataFim: TDateTimePicker
        Left = 122
        Top = 103
        Width = 105
        Height = 21
        Date = 43913.500044479170000000
        Time = 43913.500044479170000000
        TabOrder = 2
      end
      object edtNomeArquivo: TEdit
        Left = 472
        Top = 63
        Width = 177
        Height = 21
        TabOrder = 3
        Text = 'MeuSPED'
      end
      object edtCNPJ: TEdit
        Left = 9
        Top = 143
        Width = 185
        Height = 21
        TabOrder = 4
        Text = '00000000000000'
      end
      object edtToken: TEdit
        Left = 200
        Top = 143
        Width = 449
        Height = 21
        TabOrder = 5
        Text = 'a684sdf31fa35w1gfg5dsd3f1gsd1f3ds5f1g6sd1fga3sdf1'
      end
      object Panel3: TPanel
        Left = 660
        Top = 15
        Width = 361
        Height = 159
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
          Left = 190
          Top = 10
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
          Top = 59
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
          Left = 190
          Top = 59
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
          Left = 14
          Top = 114
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
          Left = 190
          Top = 114
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
      object edtDirRetorno: TEdit
        Left = 8
        Top = 64
        Width = 417
        Height = 21
        TabOrder = 7
        Text = 'Retorno\'
      end
      object btnDirConfig: TButton
        Left = 432
        Top = 24
        Width = 21
        Height = 21
        Caption = '...'
        TabOrder = 8
        OnClick = btnDirConfigClick
      end
      object btnDirRetorno: TButton
        Left = 432
        Top = 63
        Width = 21
        Height = 21
        Caption = '...'
        TabOrder = 9
        OnClick = btnDirRetornoClick
      end
    end
    object pcProcessos: TPageControl
      Left = 1
      Top = 177
      Width = 1023
      Height = 593
      ActivePage = tsApuracao
      Align = alClient
      TabOrder = 1
      object tsApuracao: TTabSheet
        Caption = 'Apura'#231#227'o'
        object gbRetornoApuracao: TGroupBox
          Left = 0
          Top = 0
          Width = 1015
          Height = 169
          Align = alTop
          Caption = 'Retorno do Inicio Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          object mmApuracao: TMemo
            Left = 2
            Top = 15
            Width = 1011
            Height = 152
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 169
          Width = 1015
          Height = 176
          Align = alTop
          Caption = 'Retorno da Gera'#231#227'o da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object mmGerarApuracao: TMemo
            Left = 2
            Top = 15
            Width = 1011
            Height = 159
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 345
          Width = 1015
          Height = 183
          Align = alTop
          Caption = 'Retorno da Consulta da Apura'#231#227'o'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object mmConsultaApuracao: TMemo
            Left = 2
            Top = 15
            Width = 1011
            Height = 166
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object Button1: TButton
          Left = 880
          Top = 536
          Width = 129
          Height = 25
          Caption = 'Limpar Retornos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
      end
      object tsTX2: TTabSheet
        Caption = 'TX2'
        ImageIndex = 1
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 1015
          Height = 565
          Align = alClient
          Caption = 'Dados b'#225'sicos TX2'
          TabOrder = 0
          object mmTX2: TMemo
            Left = 2
            Top = 15
            Width = 1011
            Height = 548
            Align = alClient
            ScrollBars = ssVertical
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
          Width = 1015
          Height = 565
          Align = alClient
          Caption = 'Retorno do Envio'
          TabOrder = 0
          object mmRetornoEnvio: TMemo
            Left = 2
            Top = 15
            Width = 1011
            Height = 548
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1023
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
    object edtCNPJEmissor: TEdit
      Left = 11
      Top = 23
      Width = 185
      Height = 21
      TabOrder = 0
      Text = '00000000000000'
    end
    object GroupBox4: TGroupBox
      Left = 456
      Top = 0
      Width = 567
      Height = 50
      Align = alRight
      Caption = 'Protocolo'
      TabOrder = 1
      object edtProtocolo: TEdit
        Left = 9
        Top = 19
        Width = 544
        Height = 21
        TabOrder = 0
      end
    end
  end
end
