namespace QuanLyVideoGame
{
    partial class Login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lb_login = new System.Windows.Forms.Label();
            this.tb_tk = new System.Windows.Forms.TextBox();
            this.tb_MK = new System.Windows.Forms.TextBox();
            this.MK = new System.Windows.Forms.Label();
            this.TTK = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.panel1.BackgroundImage = global::QuanLyVideoGame.Properties.Resources.Untitled_design;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.ForeColor = System.Drawing.Color.Aqua;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(614, 468);
            this.panel1.TabIndex = 1;
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Controls.Add(this.lb_login);
            this.panel2.Controls.Add(this.tb_tk);
            this.panel2.Controls.Add(this.tb_MK);
            this.panel2.Controls.Add(this.MK);
            this.panel2.Controls.Add(this.TTK);
            this.panel2.Location = new System.Drawing.Point(109, 37);
            this.panel2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(398, 390);
            this.panel2.TabIndex = 0;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // lb_login
            // 
            this.lb_login.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lb_login.AutoSize = true;
            this.lb_login.BackColor = System.Drawing.Color.Transparent;
            this.lb_login.Font = new System.Drawing.Font("Microsoft YaHei UI", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_login.ForeColor = System.Drawing.Color.Violet;
            this.lb_login.Location = new System.Drawing.Point(124, 287);
            this.lb_login.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lb_login.Name = "lb_login";
            this.lb_login.Size = new System.Drawing.Size(167, 36);
            this.lb_login.TabIndex = 9;
            this.lb_login.Text = "Đăng nhập";
            this.lb_login.Click += new System.EventHandler(this.lb_login_Click);
            // 
            // tb_tk
            // 
            this.tb_tk.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_tk.BackColor = System.Drawing.Color.Violet;
            this.tb_tk.Location = new System.Drawing.Point(113, 126);
            this.tb_tk.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.tb_tk.Name = "tb_tk";
            this.tb_tk.Size = new System.Drawing.Size(182, 20);
            this.tb_tk.TabIndex = 7;
            // 
            // tb_MK
            // 
            this.tb_MK.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_MK.BackColor = System.Drawing.Color.Violet;
            this.tb_MK.Location = new System.Drawing.Point(113, 208);
            this.tb_MK.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.tb_MK.Name = "tb_MK";
            this.tb_MK.Size = new System.Drawing.Size(182, 20);
            this.tb_MK.TabIndex = 8;
            this.tb_MK.UseSystemPasswordChar = true;
            // 
            // MK
            // 
            this.MK.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.MK.AutoSize = true;
            this.MK.BackColor = System.Drawing.Color.Transparent;
            this.MK.Font = new System.Drawing.Font("Microsoft JhengHei UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MK.ForeColor = System.Drawing.Color.Cyan;
            this.MK.Location = new System.Drawing.Point(97, 171);
            this.MK.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.MK.Name = "MK";
            this.MK.Size = new System.Drawing.Size(84, 20);
            this.MK.TabIndex = 5;
            this.MK.Text = "Mật khẩu";
            // 
            // TTK
            // 
            this.TTK.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.TTK.AutoSize = true;
            this.TTK.BackColor = System.Drawing.Color.Transparent;
            this.TTK.Font = new System.Drawing.Font("Microsoft JhengHei UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TTK.ForeColor = System.Drawing.Color.Cyan;
            this.TTK.Location = new System.Drawing.Point(97, 93);
            this.TTK.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.TTK.Name = "TTK";
            this.TTK.Size = new System.Drawing.Size(84, 20);
            this.TTK.TabIndex = 6;
            this.TTK.Text = "Tài khoản";
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(614, 468);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.MaximumSize = new System.Drawing.Size(630, 507);
            this.MinimumSize = new System.Drawing.Size(630, 507);
            this.Name = "Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đăng nhập";
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lb_login;
        private System.Windows.Forms.TextBox tb_tk;
        private System.Windows.Forms.TextBox tb_MK;
        private System.Windows.Forms.Label MK;
        private System.Windows.Forms.Label TTK;
        private System.Windows.Forms.Panel panel1;
    }
}

