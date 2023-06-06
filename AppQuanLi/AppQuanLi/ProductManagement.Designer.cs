namespace AppQuanLi
{
    partial class ProductManagement
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.directorySearcher1 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher2 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher3 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher4 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher5 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher6 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher7 = new System.DirectoryServices.DirectorySearcher();
            this.panel1 = new System.Windows.Forms.Panel();
            this.ProductList = new System.Windows.Forms.DataGridView();
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.comboBox6 = new System.Windows.Forms.ComboBox();
            this.comboBox5 = new System.Windows.Forms.ComboBox();
            this.comboBox4 = new System.Windows.Forms.ComboBox();
            this.btn_timkiem = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lb_ngaybdl = new System.Windows.Forms.Label();
            this.lb_email = new System.Windows.Forms.Label();
            this.lb_tinhtrang = new System.Windows.Forms.Label();
            this.lb_chucvu = new System.Windows.Forms.Label();
            this.lb_sdt = new System.Windows.Forms.Label();
            this.lb_manv = new System.Windows.Forms.Label();
            this.lb_hoten = new System.Windows.Forms.Label();
            this.cb_tinhtrang = new System.Windows.Forms.ComboBox();
            this.tb_ngaybdl = new System.Windows.Forms.TextBox();
            this.tb_chucvu = new System.Windows.Forms.TextBox();
            this.tb_email = new System.Windows.Forms.TextBox();
            this.tb_sdt = new System.Windows.Forms.TextBox();
            this.tb_manv = new System.Windows.Forms.TextBox();
            this.tb_hoten = new System.Windows.Forms.TextBox();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.btn_themsanp = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // directorySearcher1
            // 
            this.directorySearcher1.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher1.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher1.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher2
            // 
            this.directorySearcher2.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher3
            // 
            this.directorySearcher3.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher3.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher3.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher4
            // 
            this.directorySearcher4.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher5
            // 
            this.directorySearcher5.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher5.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher5.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher6
            // 
            this.directorySearcher6.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher6.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher6.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher7
            // 
            this.directorySearcher7.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher7.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher7.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.ProductList);
            this.panel1.Controls.Add(this.tb_timkiem);
            this.panel1.Controls.Add(this.comboBox6);
            this.panel1.Controls.Add(this.comboBox5);
            this.panel1.Controls.Add(this.comboBox4);
            this.panel1.Controls.Add(this.btn_timkiem);
            this.panel1.Location = new System.Drawing.Point(0, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1083, 728);
            this.panel1.TabIndex = 0;
            // 
            // ProductList
            // 
            this.ProductList.AllowDrop = true;
            this.ProductList.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.ProductList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.ProductList.BackgroundColor = System.Drawing.Color.White;
            this.ProductList.ColumnHeadersHeight = 35;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.ProductList.DefaultCellStyle = dataGridViewCellStyle1;
            this.ProductList.Location = new System.Drawing.Point(24, 89);
            this.ProductList.Name = "ProductList";
            this.ProductList.ReadOnly = true;
            this.ProductList.RowHeadersWidth = 51;
            this.ProductList.RowTemplate.Height = 24;
            this.ProductList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ProductList.Size = new System.Drawing.Size(666, 612);
            this.ProductList.TabIndex = 13;
            this.ProductList.TabStop = false;
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_timkiem.Location = new System.Drawing.Point(24, 25);
            this.tb_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.tb_timkiem.Multiline = true;
            this.tb_timkiem.Name = "tb_timkiem";
            this.tb_timkiem.Size = new System.Drawing.Size(516, 25);
            this.tb_timkiem.TabIndex = 12;
            // 
            // comboBox6
            // 
            this.comboBox6.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.comboBox6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox6.FormattingEnabled = true;
            this.comboBox6.Location = new System.Drawing.Point(372, 56);
            this.comboBox6.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.comboBox6.Name = "comboBox6";
            this.comboBox6.Size = new System.Drawing.Size(168, 28);
            this.comboBox6.TabIndex = 9;
            this.comboBox6.Text = "Tình trạng";
            // 
            // comboBox5
            // 
            this.comboBox5.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.comboBox5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox5.FormattingEnabled = true;
            this.comboBox5.Location = new System.Drawing.Point(199, 56);
            this.comboBox5.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.comboBox5.Name = "comboBox5";
            this.comboBox5.Size = new System.Drawing.Size(168, 28);
            this.comboBox5.TabIndex = 10;
            this.comboBox5.Text = "Mức giá";
            // 
            // comboBox4
            // 
            this.comboBox4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.comboBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox4.FormattingEnabled = true;
            this.comboBox4.Location = new System.Drawing.Point(25, 56);
            this.comboBox4.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.comboBox4.Name = "comboBox4";
            this.comboBox4.Size = new System.Drawing.Size(168, 28);
            this.comboBox4.TabIndex = 11;
            this.comboBox4.Text = "Thể loại";
            // 
            // btn_timkiem
            // 
            this.btn_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_timkiem.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btn_timkiem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_timkiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_timkiem.Location = new System.Drawing.Point(547, 25);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(143, 59);
            this.btn_timkiem.TabIndex = 8;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.lb_ngaybdl);
            this.panel2.Controls.Add(this.lb_email);
            this.panel2.Controls.Add(this.lb_tinhtrang);
            this.panel2.Controls.Add(this.lb_chucvu);
            this.panel2.Controls.Add(this.lb_sdt);
            this.panel2.Controls.Add(this.lb_manv);
            this.panel2.Controls.Add(this.lb_hoten);
            this.panel2.Controls.Add(this.cb_tinhtrang);
            this.panel2.Controls.Add(this.tb_ngaybdl);
            this.panel2.Controls.Add(this.tb_chucvu);
            this.panel2.Controls.Add(this.tb_email);
            this.panel2.Controls.Add(this.tb_sdt);
            this.panel2.Controls.Add(this.tb_manv);
            this.panel2.Controls.Add(this.tb_hoten);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.btn_themsanp);
            this.panel2.Location = new System.Drawing.Point(696, 89);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(375, 657);
            this.panel2.TabIndex = 14;
            // 
            // lb_ngaybdl
            // 
            this.lb_ngaybdl.AutoSize = true;
            this.lb_ngaybdl.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_ngaybdl.Location = new System.Drawing.Point(3, 493);
            this.lb_ngaybdl.Name = "lb_ngaybdl";
            this.lb_ngaybdl.Size = new System.Drawing.Size(147, 20);
            this.lb_ngaybdl.TabIndex = 66;
            this.lb_ngaybdl.Text = "Ngày bắt đầu làm";
            // 
            // lb_email
            // 
            this.lb_email.AutoSize = true;
            this.lb_email.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_email.Location = new System.Drawing.Point(3, 435);
            this.lb_email.Name = "lb_email";
            this.lb_email.Size = new System.Drawing.Size(54, 20);
            this.lb_email.TabIndex = 66;
            this.lb_email.Text = "Email";
            // 
            // lb_tinhtrang
            // 
            this.lb_tinhtrang.AutoSize = true;
            this.lb_tinhtrang.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_tinhtrang.Location = new System.Drawing.Point(3, 375);
            this.lb_tinhtrang.Name = "lb_tinhtrang";
            this.lb_tinhtrang.Size = new System.Drawing.Size(91, 20);
            this.lb_tinhtrang.TabIndex = 66;
            this.lb_tinhtrang.Text = "Tình trạng";
            // 
            // lb_chucvu
            // 
            this.lb_chucvu.AutoSize = true;
            this.lb_chucvu.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_chucvu.Location = new System.Drawing.Point(3, 322);
            this.lb_chucvu.Name = "lb_chucvu";
            this.lb_chucvu.Size = new System.Drawing.Size(75, 20);
            this.lb_chucvu.TabIndex = 66;
            this.lb_chucvu.Text = "Chức vụ";
            // 
            // lb_sdt
            // 
            this.lb_sdt.AutoSize = true;
            this.lb_sdt.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_sdt.Location = new System.Drawing.Point(3, 264);
            this.lb_sdt.Name = "lb_sdt";
            this.lb_sdt.Size = new System.Drawing.Size(112, 20);
            this.lb_sdt.TabIndex = 66;
            this.lb_sdt.Text = "Số điện thoại";
            // 
            // lb_manv
            // 
            this.lb_manv.AutoSize = true;
            this.lb_manv.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_manv.Location = new System.Drawing.Point(3, 209);
            this.lb_manv.Name = "lb_manv";
            this.lb_manv.Size = new System.Drawing.Size(116, 20);
            this.lb_manv.TabIndex = 66;
            this.lb_manv.Text = "Mã nhân viên";
            // 
            // lb_hoten
            // 
            this.lb_hoten.AutoSize = true;
            this.lb_hoten.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_hoten.Location = new System.Drawing.Point(3, 151);
            this.lb_hoten.Name = "lb_hoten";
            this.lb_hoten.Size = new System.Drawing.Size(62, 20);
            this.lb_hoten.TabIndex = 66;
            this.lb_hoten.Text = "Họ tên";
            // 
            // cb_tinhtrang
            // 
            this.cb_tinhtrang.FormattingEnabled = true;
            this.cb_tinhtrang.Location = new System.Drawing.Point(153, 372);
            this.cb_tinhtrang.Name = "cb_tinhtrang";
            this.cb_tinhtrang.Size = new System.Drawing.Size(219, 24);
            this.cb_tinhtrang.TabIndex = 65;
            // 
            // tb_ngaybdl
            // 
            this.tb_ngaybdl.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_ngaybdl.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaybdl.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaybdl.Location = new System.Drawing.Point(157, 486);
            this.tb_ngaybdl.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaybdl.Multiline = true;
            this.tb_ngaybdl.Name = "tb_ngaybdl";
            this.tb_ngaybdl.ReadOnly = true;
            this.tb_ngaybdl.Size = new System.Drawing.Size(215, 32);
            this.tb_ngaybdl.TabIndex = 58;
            this.tb_ngaybdl.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_chucvu
            // 
            this.tb_chucvu.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_chucvu.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_chucvu.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_chucvu.Location = new System.Drawing.Point(147, 315);
            this.tb_chucvu.Margin = new System.Windows.Forms.Padding(4);
            this.tb_chucvu.Multiline = true;
            this.tb_chucvu.Name = "tb_chucvu";
            this.tb_chucvu.ReadOnly = true;
            this.tb_chucvu.Size = new System.Drawing.Size(225, 32);
            this.tb_chucvu.TabIndex = 59;
            this.tb_chucvu.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_email
            // 
            this.tb_email.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_email.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_email.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_email.Location = new System.Drawing.Point(126, 428);
            this.tb_email.Margin = new System.Windows.Forms.Padding(4);
            this.tb_email.Multiline = true;
            this.tb_email.Name = "tb_email";
            this.tb_email.ReadOnly = true;
            this.tb_email.Size = new System.Drawing.Size(246, 32);
            this.tb_email.TabIndex = 60;
            this.tb_email.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_sdt
            // 
            this.tb_sdt.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_sdt.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_sdt.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_sdt.Location = new System.Drawing.Point(145, 257);
            this.tb_sdt.Margin = new System.Windows.Forms.Padding(4);
            this.tb_sdt.Multiline = true;
            this.tb_sdt.Name = "tb_sdt";
            this.tb_sdt.ReadOnly = true;
            this.tb_sdt.Size = new System.Drawing.Size(227, 32);
            this.tb_sdt.TabIndex = 62;
            this.tb_sdt.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_manv
            // 
            this.tb_manv.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_manv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_manv.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_manv.Location = new System.Drawing.Point(147, 202);
            this.tb_manv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_manv.Multiline = true;
            this.tb_manv.Name = "tb_manv";
            this.tb_manv.ReadOnly = true;
            this.tb_manv.Size = new System.Drawing.Size(225, 32);
            this.tb_manv.TabIndex = 63;
            this.tb_manv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_hoten
            // 
            this.tb_hoten.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_hoten.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_hoten.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_hoten.Location = new System.Drawing.Point(145, 144);
            this.tb_hoten.Margin = new System.Windows.Forms.Padding(4);
            this.tb_hoten.Multiline = true;
            this.tb_hoten.Name = "tb_hoten";
            this.tb_hoten.ReadOnly = true;
            this.tb_hoten.Size = new System.Drawing.Size(227, 32);
            this.tb_hoten.TabIndex = 64;
            this.tb_hoten.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btn_chinhsua
            // 
            this.btn_chinhsua.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_chinhsua.BackColor = System.Drawing.Color.Violet;
            this.btn_chinhsua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_chinhsua.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_chinhsua.Location = new System.Drawing.Point(3, 541);
            this.btn_chinhsua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_chinhsua.Name = "btn_chinhsua";
            this.btn_chinhsua.Size = new System.Drawing.Size(369, 70);
            this.btn_chinhsua.TabIndex = 56;
            this.btn_chinhsua.Text = "Chỉnh sửa";
            this.btn_chinhsua.UseVisualStyleBackColor = false;
            // 
            // btn_themsanp
            // 
            this.btn_themsanp.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themsanp.BackColor = System.Drawing.Color.Violet;
            this.btn_themsanp.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themsanp.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themsanp.Location = new System.Drawing.Point(3, 49);
            this.btn_themsanp.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themsanp.Name = "btn_themsanp";
            this.btn_themsanp.Size = new System.Drawing.Size(369, 70);
            this.btn_themsanp.TabIndex = 57;
            this.btn_themsanp.Text = "Thêm nhân viên";
            this.btn_themsanp.UseVisualStyleBackColor = false;
            // 
            // ProductManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1082, 731);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "ProductManagement";
            this.Text = "Quản lí sản phẩm";
            this.Load += new System.EventHandler(this.ProductManager_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.DirectoryServices.DirectorySearcher directorySearcher1;
        private System.DirectoryServices.DirectorySearcher directorySearcher2;
        private System.DirectoryServices.DirectorySearcher directorySearcher3;
        private System.DirectoryServices.DirectorySearcher directorySearcher4;
        private System.DirectoryServices.DirectorySearcher directorySearcher5;
        private System.DirectoryServices.DirectorySearcher directorySearcher6;
        private System.DirectoryServices.DirectorySearcher directorySearcher7;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView ProductList;
        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.ComboBox comboBox6;
        private System.Windows.Forms.ComboBox comboBox5;
        private System.Windows.Forms.ComboBox comboBox4;
        private System.Windows.Forms.Button btn_timkiem;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lb_ngaybdl;
        private System.Windows.Forms.Label lb_email;
        private System.Windows.Forms.Label lb_tinhtrang;
        private System.Windows.Forms.Label lb_chucvu;
        private System.Windows.Forms.Label lb_sdt;
        private System.Windows.Forms.Label lb_manv;
        private System.Windows.Forms.Label lb_hoten;
        private System.Windows.Forms.ComboBox cb_tinhtrang;
        private System.Windows.Forms.TextBox tb_ngaybdl;
        private System.Windows.Forms.TextBox tb_chucvu;
        private System.Windows.Forms.TextBox tb_email;
        private System.Windows.Forms.TextBox tb_sdt;
        private System.Windows.Forms.TextBox tb_manv;
        private System.Windows.Forms.TextBox tb_hoten;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Button btn_themsanp;
    }
}