namespace AppQuanLi
{
    partial class InvoiceManagement
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
            this.cb_mucgia = new System.Windows.Forms.ComboBox();
            this.btn_timkiem = new System.Windows.Forms.Button();
            this.directorySearcher1 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher7 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher6 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher5 = new System.DirectoryServices.DirectorySearcher();
            this.cb_nglap = new System.Windows.Forms.ComboBox();
            this.directorySearcher4 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher2 = new System.DirectoryServices.DirectorySearcher();
            this.InvoiceList = new System.Windows.Forms.DataGridView();
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_themsanpham = new System.Windows.Forms.Button();
            this.directorySearcher3 = new System.DirectoryServices.DirectorySearcher();
            this.panel2 = new System.Windows.Forms.Panel();
            this.tb_tenkh = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tb_tongtien = new System.Windows.Forms.TextBox();
            this.tb_ngtra = new System.Windows.Forms.TextBox();
            this.tb_nglaphd = new System.Windows.Forms.TextBox();
            this.tb_tennv = new System.Windows.Forms.TextBox();
            this.tb_makh = new System.Windows.Forms.TextBox();
            this.tb_manv = new System.Windows.Forms.TextBox();
            this.tb_mahd = new System.Windows.Forms.TextBox();
            this.cb_nv = new System.Windows.Forms.ComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.InvoiceList)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cb_mucgia
            // 
            this.cb_mucgia.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_mucgia.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_mucgia.FormattingEnabled = true;
            this.cb_mucgia.Location = new System.Drawing.Point(185, 58);
            this.cb_mucgia.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cb_mucgia.Name = "cb_mucgia";
            this.cb_mucgia.Size = new System.Drawing.Size(168, 28);
            this.cb_mucgia.TabIndex = 10;
            this.cb_mucgia.Text = "Mức giá";
            // 
            // btn_timkiem
            // 
            this.btn_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_timkiem.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btn_timkiem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_timkiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_timkiem.Location = new System.Drawing.Point(533, 27);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(93, 59);
            this.btn_timkiem.TabIndex = 8;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            // 
            // directorySearcher1
            // 
            this.directorySearcher1.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher1.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher1.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher7
            // 
            this.directorySearcher7.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher7.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher7.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher6
            // 
            this.directorySearcher6.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher6.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher6.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher5
            // 
            this.directorySearcher5.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher5.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher5.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // cb_nglap
            // 
            this.cb_nglap.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_nglap.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_nglap.FormattingEnabled = true;
            this.cb_nglap.Location = new System.Drawing.Point(11, 58);
            this.cb_nglap.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cb_nglap.Name = "cb_nglap";
            this.cb_nglap.Size = new System.Drawing.Size(168, 28);
            this.cb_nglap.TabIndex = 11;
            this.cb_nglap.Text = "Ngày lập";
            // 
            // directorySearcher4
            // 
            this.directorySearcher4.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // directorySearcher2
            // 
            this.directorySearcher2.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // InvoiceList
            // 
            this.InvoiceList.AllowDrop = true;
            this.InvoiceList.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.InvoiceList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.InvoiceList.BackgroundColor = System.Drawing.Color.White;
            this.InvoiceList.ColumnHeadersHeight = 35;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.InvoiceList.DefaultCellStyle = dataGridViewCellStyle1;
            this.InvoiceList.Location = new System.Drawing.Point(11, 110);
            this.InvoiceList.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.InvoiceList.Name = "InvoiceList";
            this.InvoiceList.ReadOnly = true;
            this.InvoiceList.RowHeadersWidth = 51;
            this.InvoiceList.RowTemplate.Height = 24;
            this.InvoiceList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.InvoiceList.Size = new System.Drawing.Size(616, 612);
            this.InvoiceList.TabIndex = 13;
            this.InvoiceList.TabStop = false;
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_timkiem.Location = new System.Drawing.Point(11, 27);
            this.tb_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.tb_timkiem.Multiline = true;
            this.tb_timkiem.Name = "tb_timkiem";
            this.tb_timkiem.Size = new System.Drawing.Size(516, 25);
            this.tb_timkiem.TabIndex = 12;
            // 
            // btn_chinhsua
            // 
            this.btn_chinhsua.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_chinhsua.BackColor = System.Drawing.Color.Violet;
            this.btn_chinhsua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_chinhsua.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_chinhsua.Location = new System.Drawing.Point(43, 617);
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
            this.button1.Location = new System.Drawing.Point(43, 22);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(400, 49);
            this.button1.TabIndex = 24;
            this.button1.Text = "Thông tin";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // btn_themsanpham
            // 
            this.btn_themsanpham.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themsanpham.BackColor = System.Drawing.Color.Violet;
            this.btn_themsanpham.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themsanpham.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themsanpham.Location = new System.Drawing.Point(245, 617);
            this.btn_themsanpham.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themsanpham.Name = "btn_themsanpham";
            this.btn_themsanpham.Size = new System.Drawing.Size(197, 78);
            this.btn_themsanpham.TabIndex = 23;
            this.btn_themsanpham.Text = "Thêm hóa đơn";
            this.btn_themsanpham.UseVisualStyleBackColor = false;
            // 
            // directorySearcher3
            // 
            this.directorySearcher3.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher3.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher3.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.tb_tenkh);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.tb_tongtien);
            this.panel2.Controls.Add(this.tb_ngtra);
            this.panel2.Controls.Add(this.tb_nglaphd);
            this.panel2.Controls.Add(this.tb_tennv);
            this.panel2.Controls.Add(this.tb_makh);
            this.panel2.Controls.Add(this.tb_manv);
            this.panel2.Controls.Add(this.tb_mahd);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.btn_themsanpham);
            this.panel2.Location = new System.Drawing.Point(627, 5);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(455, 716);
            this.panel2.TabIndex = 14;
            // 
            // tb_tenkh
            // 
            this.tb_tenkh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tenkh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tenkh.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tenkh.Location = new System.Drawing.Point(216, 313);
            this.tb_tenkh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tenkh.Multiline = true;
            this.tb_tenkh.Name = "tb_tenkh";
            this.tb_tenkh.ReadOnly = true;
            this.tb_tenkh.Size = new System.Drawing.Size(227, 43);
            this.tb_tenkh.TabIndex = 58;
            this.tb_tenkh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(14, 333);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(142, 23);
            this.label8.TabIndex = 57;
            this.label8.Text = "Tên khách hàng";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(14, 389);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(155, 23);
            this.label6.TabIndex = 56;
            this.label6.Text = "Ngày lập hóa đơn";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(14, 453);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 23);
            this.label7.TabIndex = 55;
            this.label7.Text = "Ngày trả ";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(14, 522);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(90, 23);
            this.label5.TabIndex = 54;
            this.label5.Text = "Tổng tiền";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(13, 222);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(126, 23);
            this.label4.TabIndex = 53;
            this.label4.Text = "Tên nhân viên";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(13, 273);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(138, 23);
            this.label3.TabIndex = 52;
            this.label3.Text = "Mã khách hàng";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(13, 171);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 23);
            this.label2.TabIndex = 51;
            this.label2.Text = "Mã nhân viên";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 109);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 23);
            this.label1.TabIndex = 50;
            this.label1.Text = "Mã hóa đơn";
            // 
            // tb_tongtien
            // 
            this.tb_tongtien.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tongtien.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tongtien.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tongtien.Location = new System.Drawing.Point(216, 502);
            this.tb_tongtien.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tongtien.Multiline = true;
            this.tb_tongtien.Name = "tb_tongtien";
            this.tb_tongtien.ReadOnly = true;
            this.tb_tongtien.Size = new System.Drawing.Size(227, 43);
            this.tb_tongtien.TabIndex = 49;
            this.tb_tongtien.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_ngtra
            // 
            this.tb_ngtra.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_ngtra.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngtra.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngtra.Location = new System.Drawing.Point(215, 433);
            this.tb_ngtra.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngtra.Multiline = true;
            this.tb_ngtra.Name = "tb_ngtra";
            this.tb_ngtra.ReadOnly = true;
            this.tb_ngtra.Size = new System.Drawing.Size(227, 43);
            this.tb_ngtra.TabIndex = 48;
            this.tb_ngtra.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_nglaphd
            // 
            this.tb_nglaphd.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_nglaphd.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_nglaphd.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_nglaphd.Location = new System.Drawing.Point(215, 369);
            this.tb_nglaphd.Margin = new System.Windows.Forms.Padding(4);
            this.tb_nglaphd.Multiline = true;
            this.tb_nglaphd.Name = "tb_nglaphd";
            this.tb_nglaphd.ReadOnly = true;
            this.tb_nglaphd.Size = new System.Drawing.Size(227, 43);
            this.tb_nglaphd.TabIndex = 47;
            this.tb_nglaphd.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_tennv
            // 
            this.tb_tennv.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tennv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tennv.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tennv.Location = new System.Drawing.Point(215, 208);
            this.tb_tennv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tennv.Multiline = true;
            this.tb_tennv.Name = "tb_tennv";
            this.tb_tennv.ReadOnly = true;
            this.tb_tennv.Size = new System.Drawing.Size(227, 43);
            this.tb_tennv.TabIndex = 46;
            this.tb_tennv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_makh
            // 
            this.tb_makh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_makh.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_makh.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_makh.Location = new System.Drawing.Point(215, 259);
            this.tb_makh.Margin = new System.Windows.Forms.Padding(4);
            this.tb_makh.Multiline = true;
            this.tb_makh.Name = "tb_makh";
            this.tb_makh.ReadOnly = true;
            this.tb_makh.Size = new System.Drawing.Size(227, 43);
            this.tb_makh.TabIndex = 45;
            this.tb_makh.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_manv
            // 
            this.tb_manv.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_manv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_manv.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_manv.Location = new System.Drawing.Point(215, 157);
            this.tb_manv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_manv.Multiline = true;
            this.tb_manv.Name = "tb_manv";
            this.tb_manv.ReadOnly = true;
            this.tb_manv.Size = new System.Drawing.Size(227, 43);
            this.tb_manv.TabIndex = 44;
            this.tb_manv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_mahd
            // 
            this.tb_mahd.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_mahd.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_mahd.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_mahd.Location = new System.Drawing.Point(215, 96);
            this.tb_mahd.Margin = new System.Windows.Forms.Padding(4);
            this.tb_mahd.Multiline = true;
            this.tb_mahd.Name = "tb_mahd";
            this.tb_mahd.ReadOnly = true;
            this.tb_mahd.Size = new System.Drawing.Size(227, 43);
            this.tb_mahd.TabIndex = 43;
            this.tb_mahd.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // cb_nv
            // 
            this.cb_nv.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_nv.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_nv.FormattingEnabled = true;
            this.cb_nv.Location = new System.Drawing.Point(357, 58);
            this.cb_nv.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cb_nv.Name = "cb_nv";
            this.cb_nv.Size = new System.Drawing.Size(168, 28);
            this.cb_nv.TabIndex = 9;
            this.cb_nv.Text = "Nhân viên";
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.InvoiceList);
            this.panel1.Controls.Add(this.tb_timkiem);
            this.panel1.Controls.Add(this.cb_nv);
            this.panel1.Controls.Add(this.cb_mucgia);
            this.panel1.Controls.Add(this.cb_nglap);
            this.panel1.Controls.Add(this.btn_timkiem);
            this.panel1.Location = new System.Drawing.Point(1, -1);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1081, 732);
            this.panel1.TabIndex = 1;
            // 
            // InvoiceManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1083, 731);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Name = "InvoiceManagement";
            this.Text = "Quản lý hóa đơn";
            ((System.ComponentModel.ISupportInitialize)(this.InvoiceList)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cb_mucgia;
        private System.Windows.Forms.Button btn_timkiem;
        private System.DirectoryServices.DirectorySearcher directorySearcher1;
        private System.DirectoryServices.DirectorySearcher directorySearcher7;
        private System.DirectoryServices.DirectorySearcher directorySearcher6;
        private System.DirectoryServices.DirectorySearcher directorySearcher5;
        private System.Windows.Forms.ComboBox cb_nglap;
        private System.DirectoryServices.DirectorySearcher directorySearcher4;
        private System.DirectoryServices.DirectorySearcher directorySearcher2;
        private System.Windows.Forms.DataGridView InvoiceList;
        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_themsanpham;
        private System.DirectoryServices.DirectorySearcher directorySearcher3;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox cb_nv;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tb_tenkh;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_tongtien;
        private System.Windows.Forms.TextBox tb_ngtra;
        private System.Windows.Forms.TextBox tb_nglaphd;
        private System.Windows.Forms.TextBox tb_tennv;
        private System.Windows.Forms.TextBox tb_makh;
        private System.Windows.Forms.TextBox tb_manv;
        private System.Windows.Forms.TextBox tb_mahd;
    }
}