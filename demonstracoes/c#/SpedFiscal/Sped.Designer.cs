namespace SpedFiscal
{
    partial class Sped
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.edtProtocolo = new System.Windows.Forms.TextBox();
            this.btnIniciar = new System.Windows.Forms.Button();
            this.btnGerar = new System.Windows.Forms.Button();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.btnGerarApur = new System.Windows.Forms.Button();
            this.btnConsultar = new System.Windows.Forms.Button();
            this.mmRetorno = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtCnpjSH = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTokenSH = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtArquivo = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtConfig = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtNomeArquivo = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtEmissor = new System.Windows.Forms.TextBox();
            this.dtInicio = new System.Windows.Forms.DateTimePicker();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.dtFim = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // edtProtocolo
            // 
            this.edtProtocolo.Location = new System.Drawing.Point(12, 247);
            this.edtProtocolo.Name = "edtProtocolo";
            this.edtProtocolo.Size = new System.Drawing.Size(554, 20);
            this.edtProtocolo.TabIndex = 0;
            // 
            // btnIniciar
            // 
            this.btnIniciar.Location = new System.Drawing.Point(12, 200);
            this.btnIniciar.Name = "btnIniciar";
            this.btnIniciar.Size = new System.Drawing.Size(554, 28);
            this.btnIniciar.TabIndex = 1;
            this.btnIniciar.Text = "INICIAR APURAÇÃO";
            this.btnIniciar.UseVisualStyleBackColor = true;
            this.btnIniciar.Click += new System.EventHandler(this.btnIniciar_Click);
            // 
            // btnGerar
            // 
            this.btnGerar.Location = new System.Drawing.Point(12, 273);
            this.btnGerar.Name = "btnGerar";
            this.btnGerar.Size = new System.Drawing.Size(135, 28);
            this.btnGerar.TabIndex = 2;
            this.btnGerar.Text = "GerarTx2";
            this.btnGerar.UseVisualStyleBackColor = true;
            this.btnGerar.Click += new System.EventHandler(this.btnGerar_Click);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Location = new System.Drawing.Point(153, 273);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(131, 28);
            this.btnEnviar.TabIndex = 3;
            this.btnEnviar.Text = "Enviar Registro";
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // btnGerarApur
            // 
            this.btnGerarApur.Location = new System.Drawing.Point(290, 273);
            this.btnGerarApur.Name = "btnGerarApur";
            this.btnGerarApur.Size = new System.Drawing.Size(135, 28);
            this.btnGerarApur.TabIndex = 4;
            this.btnGerarApur.Text = "Gerar Apuração";
            this.btnGerarApur.UseVisualStyleBackColor = true;
            this.btnGerarApur.Click += new System.EventHandler(this.btnGerarApur_Click);
            // 
            // btnConsultar
            // 
            this.btnConsultar.Location = new System.Drawing.Point(431, 273);
            this.btnConsultar.Name = "btnConsultar";
            this.btnConsultar.Size = new System.Drawing.Size(135, 28);
            this.btnConsultar.TabIndex = 5;
            this.btnConsultar.Text = "Consultar Apuração";
            this.btnConsultar.UseVisualStyleBackColor = true;
            this.btnConsultar.Click += new System.EventHandler(this.btnConsultar_Click);
            // 
            // mmRetorno
            // 
            this.mmRetorno.Location = new System.Drawing.Point(12, 307);
            this.mmRetorno.Multiline = true;
            this.mmRetorno.Name = "mmRetorno";
            this.mmRetorno.Size = new System.Drawing.Size(554, 328);
            this.mmRetorno.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 231);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Protocolo:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 4);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(113, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Cnpj SoftWare House:";
            // 
            // txtCnpjSH
            // 
            this.txtCnpjSH.Location = new System.Drawing.Point(12, 20);
            this.txtCnpjSH.Name = "txtCnpjSH";
            this.txtCnpjSH.Size = new System.Drawing.Size(272, 20);
            this.txtCnpjSH.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(290, 4);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(138, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Token da SoftWare House:";
            // 
            // txtTokenSH
            // 
            this.txtTokenSH.Location = new System.Drawing.Point(290, 20);
            this.txtTokenSH.Name = "txtTokenSH";
            this.txtTokenSH.Size = new System.Drawing.Size(276, 20);
            this.txtTokenSH.TabIndex = 10;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 40);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(108, 13);
            this.label4.TabIndex = 13;
            this.label4.Text = "Diretório de Arquivos:";
            // 
            // txtArquivo
            // 
            this.txtArquivo.Location = new System.Drawing.Point(12, 56);
            this.txtArquivo.Name = "txtArquivo";
            this.txtArquivo.Size = new System.Drawing.Size(554, 20);
            this.txtArquivo.TabIndex = 12;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 81);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(135, 13);
            this.label5.TabIndex = 15;
            this.label5.Text = "Diretório de Configurações:";
            // 
            // txtConfig
            // 
            this.txtConfig.Location = new System.Drawing.Point(12, 97);
            this.txtConfig.Name = "txtConfig";
            this.txtConfig.Size = new System.Drawing.Size(554, 20);
            this.txtConfig.TabIndex = 14;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(290, 120);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(91, 13);
            this.label6.TabIndex = 19;
            this.label6.Text = "Nome do arquivo:";
            // 
            // txtNomeArquivo
            // 
            this.txtNomeArquivo.Location = new System.Drawing.Point(290, 136);
            this.txtNomeArquivo.Name = "txtNomeArquivo";
            this.txtNomeArquivo.Size = new System.Drawing.Size(276, 20);
            this.txtNomeArquivo.TabIndex = 18;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 120);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 13);
            this.label7.TabIndex = 17;
            this.label7.Text = "Cnpj Emissor:";
            // 
            // txtEmissor
            // 
            this.txtEmissor.Location = new System.Drawing.Point(12, 136);
            this.txtEmissor.Name = "txtEmissor";
            this.txtEmissor.Size = new System.Drawing.Size(272, 20);
            this.txtEmissor.TabIndex = 16;
            // 
            // dtInicio
            // 
            this.dtInicio.Location = new System.Drawing.Point(12, 174);
            this.dtInicio.Name = "dtInicio";
            this.dtInicio.Size = new System.Drawing.Size(268, 20);
            this.dtInicio.TabIndex = 20;
            this.dtInicio.Value = new System.DateTime(2018, 7, 1, 0, 0, 0, 0);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 159);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(61, 13);
            this.label8.TabIndex = 21;
            this.label8.Text = "Data Inicio:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(290, 159);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 13);
            this.label9.TabIndex = 23;
            this.label9.Text = "Data Final:";
            // 
            // dtFim
            // 
            this.dtFim.Location = new System.Drawing.Point(290, 174);
            this.dtFim.Name = "dtFim";
            this.dtFim.Size = new System.Drawing.Size(276, 20);
            this.dtFim.TabIndex = 22;
            this.dtFim.Value = new System.DateTime(2018, 7, 31, 0, 0, 0, 0);
            // 
            // Sped
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(578, 647);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.dtFim);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.dtInicio);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtNomeArquivo);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtEmissor);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtConfig);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtArquivo);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtTokenSH);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtCnpjSH);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.mmRetorno);
            this.Controls.Add(this.btnConsultar);
            this.Controls.Add(this.btnGerarApur);
            this.Controls.Add(this.btnEnviar);
            this.Controls.Add(this.btnGerar);
            this.Controls.Add(this.btnIniciar);
            this.Controls.Add(this.edtProtocolo);
            this.Name = "Sped";
            this.Text = "SpedFiscal";
            this.Load += new System.EventHandler(this.Sped_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox edtProtocolo;
        private System.Windows.Forms.Button btnIniciar;
        private System.Windows.Forms.Button btnGerar;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.Button btnGerarApur;
        private System.Windows.Forms.Button btnConsultar;
        private System.Windows.Forms.TextBox mmRetorno;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtCnpjSH;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtTokenSH;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtArquivo;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtConfig;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtNomeArquivo;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtEmissor;
        private System.Windows.Forms.DateTimePicker dtInicio;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DateTimePicker dtFim;
    }
}

