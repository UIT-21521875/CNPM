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
            this.CustomerList = new System.Windows.Forms.DataGridView();
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.btn_timkiem = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tb_diachi = new System.Windows.Forms.TextBox();
            this.tb_email = new System.Windows.Forms.TextBox();
            this.tb_cccd = new System.Windows.Forms.TextBox();
            this.tb_ngaysinh = new System.Windows.Forms.TextBox();
            this.tb_sdt = new System.Windows.Forms.TextBox();
            this.tb_makh = new System.Windows.Forms.TextBox();
            this.tb_hotenkh = new System.Windows.Forms.TextBox();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_themnhanvien = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.tb_diem = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).BeginInit();
            this.panel2.SuspendLayout();
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
            this.panel1.Controls.Add(this.tb_timkiem);
            this.panel1.Controls.Add(this.btn_timkiem);
            this.panel1.Location = new System.Drawing.Point(-1, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1083, 731);
            this.panel1.TabIndex = 1;
            // 
            // CustomerList
            // 
            this.CustomerList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.CustomerList.BackgroundColor = System.Drawing.Color.White;
            this.CustomerList.ColumnHeadersHeight = 35;
            this.CustomerList.Location = new System.Drawing.Point(13, 102);
            this.CustomerList.Name = "CustomerList";
            this.CustomerList.RowHeadersWidth = 51;
            this.CustomerList.RowTemplate.Height = 24;
            this.CustomerList.Size = new System.Drawing.Size(603, 616);
            this.CustomerList.TabIndex = 0;
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_timkiem.Location = new System.Drawing.Point(13, 61);
            this.tb_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.tb_timkiem.Multiline = true;
            this.tb_timkiem.Name = "tb_timkiem";
            this.tb_timkiem.Size = new System.Drawing.Size(412, 25);
            this.tb_timkiem.TabIndex = 18;
            // 
            // btn_timkiem
            // 
            this.btn_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_timkiem.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btn_timkiem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_timkiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_timkiem.ForeColor = System.Drawing.Color.Black;
            this.btn_timkiem.Location = new System.Drawing.Point(442, 39);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(168, 55);
            this.btn_timkiem.TabIndex = 14;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.btn_themnhanvien);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.tb_hotenkh);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.tb_makh);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.tb_sdt);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.tb_ngaysinh);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.tb_cccd);
            this.panel2.Controls.Add(this.tb_email);
            this.panel2.Controls.Add(this.tb_diem);
            this.panel2.Controls.Add(this.tb_diachi);
            this.panel2.Location = new System.Drawing.Point(616, 11);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(455, 716);
            this.panel2.TabIndex = 19;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(7, 338);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 23);
            this.label6.TabIndex = 40;
            this.label6.Text = "CCCD";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(7, 403);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(58, 23);
            this.label7.TabIndex = 39;
            this.label7.Text = "Email";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(7, 463);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 23);
            this.label5.TabIndex = 37;
            this.label5.Text = "Địa chỉ";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(7, 229);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 23);
            this.label4.TabIndex = 36;
            this.label4.Text = "Ngày sinh";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(7, 280);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 23);
            this.label3.TabIndex = 35;
            this.label3.Text = "SDT";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 178);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(138, 23);
            this.label2.TabIndex = 34;
            this.label2.Text = "Mã khách hàng";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(7, 116);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 23);
            this.label1.TabIndex = 33;
            this.label1.Text = "Họ tên";
            // 
            // tb_diachi
            // 
            this.tb_diachi.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_diachi.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_diachi.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_diachi.Location = new System.Drawing.Point(209, 449);
            this.tb_diachi.Margin = new System.Windows.Forms.Padding(4);
            this.tb_diachi.Multiline = true;
            this.tb_diachi.Name = "tb_diachi";
            this.tb_diachi.ReadOnly = true;
            this.tb_diachi.Size = new System.Drawing.Size(227, 43);
            this.tb_diachi.TabIndex = 31;
            this.tb_diachi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_email
            // 
            this.tb_email.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_email.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_email.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_email.Location = new System.Drawing.Point(209, 389);
            this.tb_email.Margin = new System.Windows.Forms.Padding(4);
            this.tb_email.Multiline = true;
            this.tb_email.Name = "tb_email";
            this.tb_email.ReadOnly = true;
            this.tb_email.Size = new System.Drawing.Size(227, 43);
            this.tb_email.TabIndex = 30;
            this.tb_email.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_cccd
            // 
            this.tb_cccd.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_cccd.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_cccd.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_cccd.Location = new System.Drawing.Point(209, 327);
            this.tb_cccd.Margin = new System.Windows.Forms.Padding(4);
            this.tb_cccd.Multiline = true;
            this.tb_cccd.Name = "tb_cccd";
            this.tb_cccd.ReadOnly = true;
            this.tb_cccd.Size = new System.Drawing.Size(227, 43);
            this.tb_cccd.TabIndex = 29;
            this.tb_cccd.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_ngaysinh
            // 
            this.tb_ngaysinh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_ngaysinh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaysinh.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaysinh.Location = new System.Drawing.Point(209, 215);
            this.tb_ngaysinh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaysinh.Multiline = true;
            this.tb_ngaysinh.Name = "tb_ngaysinh";
            this.tb_ngaysinh.ReadOnly = true;
            this.tb_ngaysinh.Size = new System.Drawing.Size(227, 43);
            this.tb_ngaysinh.TabIndex = 28;
            this.tb_ngaysinh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_sdt
            // 
            this.tb_sdt.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_sdt.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_sdt.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_sdt.Location = new System.Drawing.Point(209, 266);
            this.tb_sdt.Margin = new System.Windows.Forms.Padding(4);
            this.tb_sdt.Multiline = true;
            this.tb_sdt.Name = "tb_sdt";
            this.tb_sdt.ReadOnly = true;
            this.tb_sdt.Size = new System.Drawing.Size(227, 43);
            this.tb_sdt.TabIndex = 27;
            this.tb_sdt.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_makh
            // 
            this.tb_makh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_makh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_makh.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_makh.Location = new System.Drawing.Point(209, 164);
            this.tb_makh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_makh.Multiline = true;
            this.tb_makh.Name = "tb_makh";
            this.tb_makh.ReadOnly = true;
            this.tb_makh.Size = new System.Drawing.Size(227, 43);
            this.tb_makh.TabIndex = 26;
            this.tb_makh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_hotenkh
            // 
            this.tb_hotenkh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_hotenkh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_hotenkh.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_hotenkh.Location = new System.Drawing.Point(209, 102);
            this.tb_hotenkh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_hotenkh.Multiline = true;
            this.tb_hotenkh.Name = "tb_hotenkh";
            this.tb_hotenkh.ReadOnly = true;
            this.tb_hotenkh.Size = new System.Drawing.Size(227, 43);
            this.tb_hotenkh.TabIndex = 25;
            this.tb_hotenkh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btn_chinhsua
            // 
            this.btn_chinhsua.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_chinhsua.BackColor = System.Drawing.Color.Violet;
            this.btn_chinhsua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_chinhsua.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_chinhsua.Location = new System.Drawing.Point(36, 626);
            this.btn_chinhsua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_chinhsua.Name = "btn_chinhsua";
            this.btn_chinhsua.Size = new System.Drawing.Size(197, 78);
            this.btn_chinhsua.TabIndex = 22;
            this.btn_chinhsua.Text = "Chỉnh sửa";
            this.btn_chinhsua.UseVisualStyleBackColor = false;
            // 
            // button1
            // 
            this.button1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button1.BackColor = System.Drawing.Color.Violet;
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(36, 31);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(400, 49);
            this.button1.TabIndex = 24;
            this.button1.Text = "Thông tin";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // btn_themnhanvien
            // 
            this.btn_themnhanvien.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themnhanvien.BackColor = System.Drawing.Color.Violet;
            this.btn_themnhanvien.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themnhanvien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themnhanvien.Location = new System.Drawing.Point(239, 626);
            this.btn_themnhanvien.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themnhanvien.Name = "btn_themnhanvien";
            this.btn_themnhanvien.Size = new System.Drawing.Size(197, 78);
            this.btn_themnhanvien.TabIndex = 23;
            this.btn_themnhanvien.Text = "Thêm nhân viên";
            this.btn_themnhanvien.UseVisualStyleBackColor = false;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(7, 520);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(54, 23);
            this.label8.TabIndex = 37;
            this.label8.Text = "Điểm";
            this.label8.Click += new System.EventHandler(this.label5_Click);
            // 
            // tb_diem
            // 
            this.tb_diem.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_diem.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_diem.Font = new System.Drawing.Font("Times New Roman", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_diem.Location = new System.Drawing.Point(209, 510);
            this.tb_diem.Margin = new System.Windows.Forms.Padding(4);
            this.tb_diem.Multiline = true;
            this.tb_diem.Name = "tb_diem";
            this.tb_diem.ReadOnly = true;
            this.tb_diem.Size = new System.Drawing.Size(227, 43);
            this.tb_diem.TabIndex = 31;
            this.tb_diem.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
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
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView CustomerList;
        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.Button btn_timkiem;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btn_themnhanvien;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tb_hotenkh;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tb_makh;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tb_sdt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_ngaysinh;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_cccd;
        private System.Windows.Forms.TextBox tb_email;
        private System.Windows.Forms.TextBox tb_diachi;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tb_diem;
    }
}