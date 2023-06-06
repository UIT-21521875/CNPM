namespace AppQuanLi
{
    partial class CustomerManagement
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
            this.directorySearcher1 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher2 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher3 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher4 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher5 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher6 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher7 = new System.DirectoryServices.DirectorySearcher();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lb_diem = new System.Windows.Forms.Label();
            this.lb_email = new System.Windows.Forms.Label();
            this.lb_ngaysinh = new System.Windows.Forms.Label();
            this.lb_chucvu = new System.Windows.Forms.Label();
            this.lb_sdt = new System.Windows.Forms.Label();
            this.lb_makh = new System.Windows.Forms.Label();
            this.lb_hoten = new System.Windows.Forms.Label();
            this.tb_ngaybdl = new System.Windows.Forms.TextBox();
            this.tb_cccd = new System.Windows.Forms.TextBox();
            this.tb_email = new System.Windows.Forms.TextBox();
            this.tb_sdt = new System.Windows.Forms.TextBox();
            this.tb_makh = new System.Windows.Forms.TextBox();
            this.tb_hoten = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.btn_themkhachhang = new System.Windows.Forms.Button();
            this.CustomerList = new System.Windows.Forms.DataGridView();
            this.tb_ngaysinh = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.CustomerList);
            this.panel1.Location = new System.Drawing.Point(26, 29);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1030, 672);
            this.panel1.TabIndex = 1;
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
            // panel2
            // 
            this.panel2.Controls.Add(this.lb_diem);
            this.panel2.Controls.Add(this.lb_email);
            this.panel2.Controls.Add(this.lb_ngaysinh);
            this.panel2.Controls.Add(this.lb_chucvu);
            this.panel2.Controls.Add(this.lb_sdt);
            this.panel2.Controls.Add(this.lb_makh);
            this.panel2.Controls.Add(this.lb_hoten);
            this.panel2.Controls.Add(this.tb_ngaybdl);
            this.panel2.Controls.Add(this.tb_ngaysinh);
            this.panel2.Controls.Add(this.tb_cccd);
            this.panel2.Controls.Add(this.tb_email);
            this.panel2.Controls.Add(this.tb_sdt);
            this.panel2.Controls.Add(this.tb_makh);
            this.panel2.Controls.Add(this.tb_hoten);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.btn_themkhachhang);
            this.panel2.Location = new System.Drawing.Point(653, 8);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(375, 657);
            this.panel2.TabIndex = 3;
            // 
            // lb_diem
            // 
            this.lb_diem.AutoSize = true;
            this.lb_diem.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_diem.Location = new System.Drawing.Point(0, 443);
            this.lb_diem.Name = "lb_diem";
            this.lb_diem.Size = new System.Drawing.Size(50, 20);
            this.lb_diem.TabIndex = 66;
            this.lb_diem.Text = "Điểm";
            // 
            // lb_email
            // 
            this.lb_email.AutoSize = true;
            this.lb_email.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_email.Location = new System.Drawing.Point(0, 385);
            this.lb_email.Name = "lb_email";
            this.lb_email.Size = new System.Drawing.Size(54, 20);
            this.lb_email.TabIndex = 66;
            this.lb_email.Text = "Email";
            // 
            // lb_ngaysinh
            // 
            this.lb_ngaysinh.AutoSize = true;
            this.lb_ngaysinh.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_ngaysinh.Location = new System.Drawing.Point(0, 325);
            this.lb_ngaysinh.Name = "lb_ngaysinh";
            this.lb_ngaysinh.Size = new System.Drawing.Size(86, 20);
            this.lb_ngaysinh.TabIndex = 66;
            this.lb_ngaysinh.Text = "Ngày sinh";
            // 
            // lb_chucvu
            // 
            this.lb_chucvu.AutoSize = true;
            this.lb_chucvu.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_chucvu.Location = new System.Drawing.Point(0, 272);
            this.lb_chucvu.Name = "lb_chucvu";
            this.lb_chucvu.Size = new System.Drawing.Size(61, 20);
            this.lb_chucvu.TabIndex = 66;
            this.lb_chucvu.Text = "CCCD";
            // 
            // lb_sdt
            // 
            this.lb_sdt.AutoSize = true;
            this.lb_sdt.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_sdt.Location = new System.Drawing.Point(0, 214);
            this.lb_sdt.Name = "lb_sdt";
            this.lb_sdt.Size = new System.Drawing.Size(112, 20);
            this.lb_sdt.TabIndex = 66;
            this.lb_sdt.Text = "Số điện thoại";
            // 
            // lb_makh
            // 
            this.lb_makh.AutoSize = true;
            this.lb_makh.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_makh.Location = new System.Drawing.Point(0, 159);
            this.lb_makh.Name = "lb_makh";
            this.lb_makh.Size = new System.Drawing.Size(130, 20);
            this.lb_makh.TabIndex = 66;
            this.lb_makh.Text = "Mã khách hàng";
            // 
            // lb_hoten
            // 
            this.lb_hoten.AutoSize = true;
            this.lb_hoten.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_hoten.Location = new System.Drawing.Point(0, 101);
            this.lb_hoten.Name = "lb_hoten";
            this.lb_hoten.Size = new System.Drawing.Size(62, 20);
            this.lb_hoten.TabIndex = 66;
            this.lb_hoten.Text = "Họ tên";
            // 
            // tb_ngaybdl
            // 
            this.tb_ngaybdl.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_ngaybdl.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaybdl.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaybdl.Location = new System.Drawing.Point(144, 436);
            this.tb_ngaybdl.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaybdl.Multiline = true;
            this.tb_ngaybdl.Name = "tb_ngaybdl";
            this.tb_ngaybdl.ReadOnly = true;
            this.tb_ngaybdl.Size = new System.Drawing.Size(225, 32);
            this.tb_ngaybdl.TabIndex = 58;
            this.tb_ngaybdl.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_cccd
            // 
            this.tb_cccd.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_cccd.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_cccd.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_cccd.Location = new System.Drawing.Point(144, 265);
            this.tb_cccd.Margin = new System.Windows.Forms.Padding(4);
            this.tb_cccd.Multiline = true;
            this.tb_cccd.Name = "tb_cccd";
            this.tb_cccd.ReadOnly = true;
            this.tb_cccd.Size = new System.Drawing.Size(225, 32);
            this.tb_cccd.TabIndex = 59;
            this.tb_cccd.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_email
            // 
            this.tb_email.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_email.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_email.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_email.Location = new System.Drawing.Point(144, 378);
            this.tb_email.Margin = new System.Windows.Forms.Padding(4);
            this.tb_email.Multiline = true;
            this.tb_email.Name = "tb_email";
            this.tb_email.ReadOnly = true;
            this.tb_email.Size = new System.Drawing.Size(225, 32);
            this.tb_email.TabIndex = 60;
            this.tb_email.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_sdt
            // 
            this.tb_sdt.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_sdt.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_sdt.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_sdt.Location = new System.Drawing.Point(142, 207);
            this.tb_sdt.Margin = new System.Windows.Forms.Padding(4);
            this.tb_sdt.Multiline = true;
            this.tb_sdt.Name = "tb_sdt";
            this.tb_sdt.ReadOnly = true;
            this.tb_sdt.Size = new System.Drawing.Size(227, 32);
            this.tb_sdt.TabIndex = 62;
            this.tb_sdt.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_makh
            // 
            this.tb_makh.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_makh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_makh.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_makh.Location = new System.Drawing.Point(144, 152);
            this.tb_makh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_makh.Multiline = true;
            this.tb_makh.Name = "tb_makh";
            this.tb_makh.ReadOnly = true;
            this.tb_makh.Size = new System.Drawing.Size(225, 32);
            this.tb_makh.TabIndex = 63;
            this.tb_makh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_hoten
            // 
            this.tb_hoten.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_hoten.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_hoten.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_hoten.Location = new System.Drawing.Point(142, 94);
            this.tb_hoten.Margin = new System.Windows.Forms.Padding(4);
            this.tb_hoten.Multiline = true;
            this.tb_hoten.Name = "tb_hoten";
            this.tb_hoten.ReadOnly = true;
            this.tb_hoten.Size = new System.Drawing.Size(227, 32);
            this.tb_hoten.TabIndex = 64;
            this.tb_hoten.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // button1
            // 
            this.button1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button1.BackColor = System.Drawing.Color.Violet;
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(0, 2);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(369, 70);
            this.button1.TabIndex = 56;
            this.button1.Text = "Thông tin";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // btn_chinhsua
            // 
            this.btn_chinhsua.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_chinhsua.BackColor = System.Drawing.Color.Violet;
            this.btn_chinhsua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_chinhsua.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_chinhsua.Location = new System.Drawing.Point(0, 511);
            this.btn_chinhsua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_chinhsua.Name = "btn_chinhsua";
            this.btn_chinhsua.Size = new System.Drawing.Size(369, 70);
            this.btn_chinhsua.TabIndex = 56;
            this.btn_chinhsua.Text = "Chỉnh sửa";
            this.btn_chinhsua.UseVisualStyleBackColor = false;
            // 
            // btn_themkhachhang
            // 
            this.btn_themkhachhang.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themkhachhang.BackColor = System.Drawing.Color.Violet;
            this.btn_themkhachhang.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themkhachhang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themkhachhang.Location = new System.Drawing.Point(0, 585);
            this.btn_themkhachhang.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themkhachhang.Name = "btn_themkhachhang";
            this.btn_themkhachhang.Size = new System.Drawing.Size(369, 70);
            this.btn_themkhachhang.TabIndex = 57;
            this.btn_themkhachhang.Text = "Thêm khách hàng";
            this.btn_themkhachhang.UseVisualStyleBackColor = false;
            // 
            // CustomerList
            // 
            this.CustomerList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.CustomerList.BackgroundColor = System.Drawing.Color.White;
            this.CustomerList.ColumnHeadersHeight = 50;
            this.CustomerList.Location = new System.Drawing.Point(3, 8);
            this.CustomerList.Name = "CustomerList";
            this.CustomerList.RowHeadersWidth = 51;
            this.CustomerList.RowTemplate.Height = 24;
            this.CustomerList.Size = new System.Drawing.Size(645, 657);
            this.CustomerList.TabIndex = 2;
            // 
            // tb_ngaysinh
            // 
            this.tb_ngaysinh.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_ngaysinh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaysinh.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaysinh.Location = new System.Drawing.Point(144, 313);
            this.tb_ngaysinh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaysinh.Multiline = true;
            this.tb_ngaysinh.Name = "tb_ngaysinh";
            this.tb_ngaysinh.ReadOnly = true;
            this.tb_ngaysinh.Size = new System.Drawing.Size(225, 32);
            this.tb_ngaysinh.TabIndex = 59;
            this.tb_ngaysinh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // CustomerManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1082, 731);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Name = "CustomerManagement";
            this.Text = "CustomerManagement";
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.DirectoryServices.DirectorySearcher directorySearcher1;
        private System.DirectoryServices.DirectorySearcher directorySearcher2;
        private System.DirectoryServices.DirectorySearcher directorySearcher3;
        private System.DirectoryServices.DirectorySearcher directorySearcher4;
        private System.DirectoryServices.DirectorySearcher directorySearcher5;
        private System.DirectoryServices.DirectorySearcher directorySearcher6;
        private System.DirectoryServices.DirectorySearcher directorySearcher7;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lb_diem;
        private System.Windows.Forms.Label lb_email;
        private System.Windows.Forms.Label lb_ngaysinh;
        private System.Windows.Forms.Label lb_chucvu;
        private System.Windows.Forms.Label lb_sdt;
        private System.Windows.Forms.Label lb_makh;
        private System.Windows.Forms.Label lb_hoten;
        private System.Windows.Forms.TextBox tb_ngaybdl;
        private System.Windows.Forms.TextBox tb_ngaysinh;
        private System.Windows.Forms.TextBox tb_cccd;
        private System.Windows.Forms.TextBox tb_email;
        private System.Windows.Forms.TextBox tb_sdt;
        private System.Windows.Forms.TextBox tb_makh;
        private System.Windows.Forms.TextBox tb_hoten;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Button btn_themkhachhang;
        private System.Windows.Forms.DataGridView CustomerList;
    }
}