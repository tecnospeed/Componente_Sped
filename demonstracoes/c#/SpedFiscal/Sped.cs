using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SpedFiscal
{
    public partial class Sped : Form
    {
        public Sped()
        {
            InitializeComponent();
        }

        public SpedClientX.spdSpedClientX spedFiscal = new SpedClientX.spdSpedClientX();

        private void btnIniciar_Click(object sender, EventArgs e)
        {
            SpedClientX.IspdRetIniciarApuracao _RetApuracao;
            _RetApuracao = spedFiscal.IniciarApuracao();
            mmRetorno.Clear();
            mmRetorno.Text += " Retorno do Inicia Apuração" + Environment.NewLine;
            mmRetorno.Text += "  Protocolo: " + _RetApuracao.Protocolo + Environment.NewLine;
            mmRetorno.Text += "  Mensagem: " + _RetApuracao.Mensagem + Environment.NewLine;
            edtProtocolo.Text = _RetApuracao.Protocolo;
        }

        private void Sped_Load(object sender, EventArgs e)
        {   
            txtArquivo.Text = @"C:\Program Files\TecnoSpeed\SpedFiscal\Retorno\";
            txtConfig.Text = @"C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\";
            txtEmissor.Text = "0818716800160";
            txtCnpjSH.Text = "86837822000147";
            txtTokenSH.Text = "Hmf3xiDgPP6nC90MO7Yy64NhEytKoOVA7AkELTZI";
            txtNomeArquivo.Text = "MeuSped";
            this.Text = "SpedFiscal - TecnoSpeed";
        }

        private void btnGerar_Click(object sender, EventArgs e)
        {
            mmRetorno.Clear();
            mmRetorno.Text += "INCLUIR0000" + Environment.NewLine;
            mmRetorno.Text += "COD_VER_1=012" + Environment.NewLine;
            mmRetorno.Text += "COD_FIN_2=0" + Environment.NewLine;
            mmRetorno.Text += "DT_INI_3=01112018" + Environment.NewLine;
            mmRetorno.Text += "DT_FIN_4=30112018" + Environment.NewLine;
            mmRetorno.Text += "NOME_5=TECNOSPEED SA" + Environment.NewLine;
            mmRetorno.Text += "CNPJ_6=0000000" + Environment.NewLine;
            mmRetorno.Text += "CPF_7=" + Environment.NewLine;
            mmRetorno.Text += "UF_8=PR" + Environment.NewLine;
            mmRetorno.Text += "IE_9=1111111119" + Environment.NewLine;
            mmRetorno.Text += "COD_MUN_10=4314902" + Environment.NewLine;
            mmRetorno.Text += "IM_11=" + Environment.NewLine;
            mmRetorno.Text += "SUFRAMA_12=" + Environment.NewLine;
            mmRetorno.Text += "IND_PERFIL_13=A" + Environment.NewLine;
            mmRetorno.Text += "IND_ATIV_14=1" + Environment.NewLine;
            mmRetorno.Text += "SALVAR0000" + Environment.NewLine;
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            SpedClientX.IspdRetEnviarRegistros _RetEnviaRegistros;
            _RetEnviaRegistros = spedFiscal.EnviarRegistros(edtProtocolo.Text, mmRetorno.Text);
            mmRetorno.Clear();
            mmRetorno.Text += " Retorno do Envio do TX2" + Environment.NewLine;
            mmRetorno.Text += "   Protocolo: " + _RetEnviaRegistros.Protocolo + Environment.NewLine;
            mmRetorno.Text += "   Mensagem: " + _RetEnviaRegistros.Mensagem + Environment.NewLine;
        }

        private void btnGerarApur_Click(object sender, EventArgs e)
        {
            SpedClientX.IspdRetGerarApuracao _RetGerarApuracao;
            _RetGerarApuracao = spedFiscal.GerarApuracao(edtProtocolo.Text);
            mmRetorno.Clear();
            mmRetorno.Text += " Retorno do Envio do Gerar Apuração" + Environment.NewLine;
            mmRetorno.Text += "   Protocolo: " + _RetGerarApuracao.Protocolo + Environment.NewLine;
            mmRetorno.Text += "   Mensagem: " + _RetGerarApuracao.Mensagem + Environment.NewLine;
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            SpedClientX.IspdRetConsultarApuracao _RetConsultarApuracao;
            _RetConsultarApuracao = spedFiscal.ConsultarApuracao(edtProtocolo.Text, spedFiscal.DiretorioArquivo);
            mmRetorno.Clear();
            mmRetorno.Text += " Retorno do Envio do Gerar Apuração" + Environment.NewLine;
            mmRetorno.Text += "   Protocolo:" + _RetConsultarApuracao.Protocolo + Environment.NewLine;
            mmRetorno.Text += "   Mensagem: " + _RetConsultarApuracao.Mensagem + Environment.NewLine;
            mmRetorno.Text += "   Nome do arquivo: " + _RetConsultarApuracao.NomeArquivo + Environment.NewLine;
            mmRetorno.Text += "   Código: " + _RetConsultarApuracao.Codigo + Environment.NewLine;
        }

        private void btnConfigurar_Click(object sender, EventArgs e)
        {
            spedFiscal.NomeArquivo = txtNomeArquivo.Text + ".txt";
            spedFiscal.DataInicio = dtInicio.Value.ToString("dd/MM/yyyy");
            spedFiscal.DataFim = dtFim.Value.ToString("dd/MM/yyyy");
            spedFiscal.CnpjEmissor = txtEmissor.Text;
            spedFiscal.DiretorioArquivo = txtArquivo.Text;
            spedFiscal.DiretorioErros = @"C:\Program Files\TecnoSpeed\SpedFiscal\Arquivos\";
            spedFiscal.DiretorioConfiguracao = txtConfig.Text;
            spedFiscal.ConfigurarSoftwareHouse(txtCnpjSH.Text, txtTokenSH.Text);
        }
    }
}
