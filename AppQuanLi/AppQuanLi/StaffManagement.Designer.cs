namespace AppQuanLi
{
    partial class StaffManagement
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
            this.staffList = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.btn_themnhanvien = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.tb_hoten = new System.Windows.Forms.TextBox();
            this.tb_manv = new System.Windows.Forms.TextBox();
            this.tb_ngaysinh = new System.Windows.Forms.TextBox();
            this.tb_sdt = new System.Windows.Forms.TextBox();
            this.tb_tinhtrang = new System.Windows.Forms.TextBox();
            this.tb_chucvu = new System.Windows.Forms.TextBox();
            this.tb_diachi = new System.Windows.Forms.TextBox();
            this.tb_ngaybdl = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.staffList)).BeginInit();
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
            this.panel1.Controls.Add(this.staffList);
            this.panel1.Location = new System.Drawing.Point(3, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1079, 728);
            this.panel1.TabIndex = 0;
            // 
            // staffList
            // 
            this.staffList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.staffList.BackgroundColor = System.Drawing.Color.White;
            this.staffList.ColumnHeadersHeight = 50;
            this.staffList.Location = new System.Drawing.Point(0, 0);
            this.staffList.Name = "staffList";
            this.staffList.RowHeadersWidth = 51;
            this.staffList.RowTemplate.Height = 24;
            this.staffList.Size = new System.Drawing.Size(623, 716);
            this.staffList.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.tb_ngaybdl);
            this.panel2.Controls.Add(this.tb_diachi);
            this.panel2.Controls.Add(this.tb_tinhtrang);
            this.panel2.Controls.Add(this.tb_chucvu);
            this.panel2.Controls.Add(this.tb_ngaysinh);
            this.panel2.Controls.Add(this.tb_sdt);
            this.panel2.Controls.Add(this.tb_manv);
            this.panel2.Controls.Add(this.tb_hoten);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.btn_themnhanvien);
            this.panel2.Location = new System.Drawing.Point(621, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(455, 716);
            this.panel2.TabIndex = 18;
            // 
            // btn_chinhsua
            // 
            this.btn_chinhsua.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_chinhsua.BackColor = System.Drawing.Color.Violet;
            this.btn_chinhsua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_chinhsua.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_chinhsua.Location = new System.Drawing.Point(32, 622);
            this.btn_chinhsua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_chinhsua.Name = "btn_chinhsua";
            this.btn_chinhsua.Size = new System.Drawing.Size(197, 78);
            this.btn_chinhsua.TabIndex = 18;
            this.btn_chinhsua.Text = "Xem thông tin";
            this.btn_chinhsua.UseVisualStyleBackColor = false;
            // 
            // btn_themnhanvien
            // 
            this.btn_themnhanvien.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themnhanvien.BackColor = System.Drawing.Color.Violet;
            this.btn_themnhanvien.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themnhanvien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themnhanvien.Location = new System.Drawing.Point(235, 622);
            this.btn_themnhanvien.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themnhanvien.Name = "btn_themnhanvien";
            this.btn_themnhanvien.Size = new System.Drawing.Size(197, 78);
            this.btn_themnhanvien.TabIndex = 19;
            this.btn_themnhanvien.Text = "Thêm nhân viên";
            this.btn_themnhanvien.UseVisualStyleBackColor = false;
            // 
            // button1
            // 
            this.button1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button1.BackColor = System.Drawing.Color.Violet;
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(32, 27);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(400, 49);
            this.button1.TabIndex = 19;
            this.button1.Text = "Thông tin";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // tb_hoten
            // 
            this.tb_hoten.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_hoten.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_hoten.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_hoten.Location = new System.Drawing.Point(205, 98);
            this.tb_hoten.Margin = new System.Windows.Forms.Padding(4);
            this.tb_hoten.Multiline = true;
            this.tb_hoten.Name = "tb_hoten";
            this.tb_hoten.ReadOnly = true;
            this.tb_hoten.Size = new System.Drawing.Size(227, 43);
            this.tb_hoten.TabIndex = 20;
            this.tb_hoten.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_manv
            // 
            this.tb_manv.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_manv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_manv.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_manv.Location = new System.Drawing.Point(205, 160);
            this.tb_manv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_manv.Multiline = true;
            this.tb_manv.Name = "tb_manv";
            this.tb_manv.ReadOnly = true;
            this.tb_manv.Size = new System.Drawing.Size(227, 43);
            this.tb_manv.TabIndex = 20;
            this.tb_manv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_ngaysinh
            // 
            this.tb_ngaysinh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_ngaysinh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaysinh.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaysinh.Location = new System.Drawing.Point(205, 211);
            this.tb_ngaysinh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaysinh.Multiline = true;
            this.tb_ngaysinh.Name = "tb_ngaysinh";
            this.tb_ngaysinh.ReadOnly = true;
            this.tb_ngaysinh.Size = new System.Drawing.Size(227, 43);
            this.tb_ngaysinh.TabIndex = 20;
            this.tb_ngaysinh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_sdt
            // 
            this.tb_sdt.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_sdt.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_sdt.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_sdt.Location = new System.Drawing.Point(205, 262);
            this.tb_sdt.Margin = new System.Windows.Forms.Padding(4);
            this.tb_sdt.Multiline = true;
            this.tb_sdt.Name = "tb_sdt";
            this.tb_sdt.ReadOnly = true;
            this.tb_sdt.Size = new System.Drawing.Size(227, 43);
            this.tb_sdt.TabIndex = 20;
            this.tb_sdt.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_tinhtrang
            // 
            this.tb_tinhtrang.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tinhtrang.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tinhtrang.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tinhtrang.Location = new System.Drawing.Point(205, 385);
            this.tb_tinhtrang.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tinhtrang.Multiline = true;
            this.tb_tinhtrang.Name = "tb_tinhtrang";
            this.tb_tinhtrang.ReadOnly = true;
            this.tb_tinhtrang.Size = new System.Drawing.Size(227, 43);
            this.tb_tinhtrang.TabIndex = 20;
            this.tb_tinhtrang.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_chucvu
            // 
            this.tb_chucvu.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_chucvu.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_chucvu.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_chucvu.Location = new System.Drawing.Point(205, 323);
            this.tb_chucvu.Margin = new System.Windows.Forms.Padding(4);
            this.tb_chucvu.Multiline = true;
            this.tb_chucvu.Name = "tb_chucvu";
            this.tb_chucvu.ReadOnly = true;
            this.tb_chucvu.Size = new System.Drawing.Size(227, 43);
            this.tb_chucvu.TabIndex = 20;
            this.tb_chucvu.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_diachi
            // 
            this.tb_diachi.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_diachi.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_diachi.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_diachi.Location = new System.Drawing.Point(205, 445);
            this.tb_diachi.Margin = new System.Windows.Forms.Padding(4);
            this.tb_diachi.Multiline = true;
            this.tb_diachi.Name = "tb_diachi";
            this.tb_diachi.ReadOnly = true;
            this.tb_diachi.Size = new System.Drawing.Size(227, 43);
            this.tb_diachi.TabIndex = 20;
            this.tb_diachi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_ngaybdl
            // 
            this.tb_ngaybdl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_ngaybdl.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngaybdl.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngaybdl.Location = new System.Drawing.Point(205, 508);
            this.tb_ngaybdl.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngaybdl.Multiline = true;
            this.tb_ngaybdl.Name = "tb_ngaybdl";
            this.tb_ngaybdl.ReadOnly = true;
            this.tb_ngaybdl.Size = new System.Drawing.Size(227, 43);
            this.tb_ngaybdl.TabIndex = 20;
            this.tb_ngaybdl.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 112);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 23);
            this.label1.TabIndex = 21;
            this.label1.Text = "Họ tên";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(3, 174);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 23);
            this.label2.TabIndex = 21;
            this.label2.Text = "Mã nhân viên";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 276);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 23);
            this.label3.TabIndex = 21;
            this.label3.Text = "SDT";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 225);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 23);
            this.label4.TabIndex = 21;
            this.label4.Text = "Ngày sinh";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(3, 459);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 23);
            this.label5.TabIndex = 21;
            this.label5.Text = "Địa chỉ";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(3, 334);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 23);
            this.label6.TabIndex = 21;
            this.label6.Text = "Chức vụ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(3, 399);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(99, 23);
            this.label7.TabIndex = 21;
            this.label7.Text = "Tình trạng";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(3, 522);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(121, 23);
            this.label8.TabIndex = 21;
            this.label8.Text = "Ngày bắt đầu";
            // 
            // StaffManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1082, 731);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "StaffManagement";
            this.Text = "Nhân viên";
            this.Load += new System.EventHandler(this.StaffManager_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.staffList)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_themnhanvien;
        private System.Windows.Forms.DataGridView staffList;
        private System.Windows.Forms.TextBox tb_hoten;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_ngaybdl;
        private System.Windows.Forms.TextBox tb_diachi;
        private System.Windows.Forms.TextBox tb_tinhtrang;
        private System.Windows.Forms.TextBox tb_chucvu;
        private System.Windows.Forms.TextBox tb_ngaysinh;
        private System.Windows.Forms.TextBox tb_sdt;
        private System.Windows.Forms.TextBox tb_manv;
    }
}