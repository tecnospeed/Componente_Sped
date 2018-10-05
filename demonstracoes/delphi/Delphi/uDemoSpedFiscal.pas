unit uDemoSpedFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SpedClientX_TLB, Vcl.StdCtrls, System.Zip,
  Vcl.ButtonGroup, Vcl.ExtCtrls, System.DateUtils, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btnIniciarApuracao: TButton;
    Memo1: TMemo;
    edtProtocolo: TLabeledEdit;
    btnEnviar: TButton;
    btnGerarApur: TButton;
    btnConsultarApur: TButton;
    btnGerarTx2: TButton;
    edtCnpjSH: TLabeledEdit;
    edtTokenSH: TLabeledEdit;
    edtArquivo: TLabeledEdit;
    edtConfig: TLabeledEdit;
    edtCnpjEmissor: TLabeledEdit;
    edtNomeArquivo: TLabeledEdit;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnIniciarApuracaoClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnGerarApurClick(Sender: TObject);
    procedure btnGerarTx2Click(Sender: TObject);
    procedure btnConsultarApurClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SpedFiscal: TspdSpedClientX;

implementation

{$R *.dfm}

procedure TForm1.btnIniciarApuracaoClick(Sender: TObject);
VAR
  _Apuracao: IspdApuracao;
  _RetApuracao: IspdRetIniciarApuracao;
begin
  SpedFiscal.ConfigurarSoftwareHouse(edtCnpjSH.Text, edtTokenSH.Text);
  SpedFiscal.NomeArquivo := edtNomeArquivo.Text + '.txt';
  SpedFiscal.DataInicio := DateToStr(dtInicio.Date);
  SpedFiscal.DataFim := DateToStr(dtFim.Date);
  SpedFiscal.CnpjEmissor := edtCnpjEmissor.Text;
  SpedFiscal.DiretorioArquivo := edtArquivo.Text;
  SpedFiscal.DiretorioConfiguracao := edtConfig.Text;
  _RetApuracao := SpedFiscal.IniciarApuracao();
  edtProtocolo.Text := _RetApuracao.Protocolo;
  Memo1.Lines.Clear;
  Memo1.Lines.Add(' Retorno do Inicia Apura��o');
  Memo1.Lines.Add('   Protocolo: ' + _RetApuracao.Protocolo);
  Memo1.Lines.Add('   Mensagem: ' + _RetApuracao.Mensagem);

end;

procedure TForm1.btnEnviarClick(Sender: TObject);
var
  _RetEnviaRegistro: IspdRetEnviarRegistros;
begin
  _RetEnviaRegistro := SpedFiscal.EnviarRegistros(edtProtocolo.Text, Memo1.Text);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(' Retorno do Envio do TX2');
  Memo1.Lines.Add('   Protocolo: ' + _RetEnviaRegistro.Protocolo);
  Memo1.Lines.Add('   Mensagem: ' + _RetEnviaRegistro.Mensagem);

end;

procedure TForm1.btnGerarApurClick(Sender: TObject);
var
  _RetGerarApuracao: IspdRetGerarApuracao;
begin
  _RetGerarApuracao := SpedFiscal.GerarApuracao(edtProtocolo.Text);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(' Retorno do Envio do Gerar Apura��o');
  Memo1.Lines.Add('   Protocolo: ' + _RetGerarApuracao.Protocolo);
  Memo1.Lines.Add('   Mensagem: ' + _RetGerarApuracao.Mensagem);

end;

procedure TForm1.btnConsultarApurClick(Sender: TObject);

var
  _RetConsultarApuracao: IspdRetConsultarApuracao;
begin
  _RetConsultarApuracao := SpedFiscal.ConsultarApuracao(edtProtocolo.Text,
    SpedFiscal.DiretorioArquivo);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(' Retorno do Envio do Gerar Apura��o');
  Memo1.Lines.Add('   Protocolo: ' + _RetConsultarApuracao.Protocolo);
  Memo1.Lines.Add('   Mensagem: ' + _RetConsultarApuracao.Mensagem);
  Memo1.Lines.Add('   Nome do Arquivo: ' + _RetConsultarApuracao.NomeArquivo);
  Memo1.Lines.Add('   C�digo: ' + _RetConsultarApuracao.Codigo);

end;

procedure TForm1.btnGerarTx2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('INCLUIR0000');
  Memo1.Lines.Add('COD_VER_1=012');
  Memo1.Lines.Add('COD_FIN_2=0');
  Memo1.Lines.Add('DT_INI_3=01112018');
  Memo1.Lines.Add('DT_FIN_4=30112018');
  Memo1.Lines.Add('NOME_5=TECNOSPEED SA');
  Memo1.Lines.Add('CNPJ_6=0000000');
  Memo1.Lines.Add('CPF_7=');
  Memo1.Lines.Add('UF_8=PR');
  Memo1.Lines.Add('IE_9=1111111119');
  Memo1.Lines.Add('COD_MUN_10=4314902');
  Memo1.Lines.Add('IM_11=');
  Memo1.Lines.Add('SUFRAMA_12=');
  Memo1.Lines.Add('IND_PERFIL_13=A');
  Memo1.Lines.Add('IND_ATIV_14=1');
  Memo1.Lines.Add('SALVAR0000');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SpedFiscal := TspdSpedClientX.Create(nil);
  edtCnpjSH.Text := '86837822000147';
  edtTokenSH.Text := 'Hmf3xiDgPP6nC90MO7Yy64NhEytKoOVA7AkELTZI';
  edtArquivo.Text := 'C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\';
  edtConfig.Text := 'C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\';
  edtCnpjEmissor.Text := '08187168000160';
  edtNomeArquivo.Text := 'MeuSped';
  SpedFiscal.DiretorioErros := 'C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\';
  Form1.Caption := 'SpedFiscal - TecnoSpeed';
end;

end.