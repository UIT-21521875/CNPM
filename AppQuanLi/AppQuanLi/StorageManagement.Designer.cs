namespace AppQuanLi
{
    partial class StorageManagement
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
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tb_tongtiennk = new System.Windows.Forms.TextBox();
            this.directorySearcher1 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher7 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher6 = new System.DirectoryServices.DirectorySearcher();
            this.directorySearcher5 = new System.DirectoryServices.DirectorySearcher();
            this.tb_soluong = new System.Windows.Forms.TextBox();
            this.tb_ngnhap = new System.Windows.Forms.TextBox();
            this.tb_tennv = new System.Windows.Forms.TextBox();
            this.tb_tinhtrangkho = new System.Windows.Forms.TextBox();
            this.cb_ngaynhap = new System.Windows.Forms.ComboBox();
            this.directorySearcher4 = new System.DirectoryServices.DirectorySearcher();
            this.tb_makho = new System.Windows.Forms.TextBox();
            this.directorySearcher2 = new System.DirectoryServices.DirectorySearcher();
            this.tb_mank = new System.Windows.Forms.TextBox();
            this.ProductList = new System.Windows.Forms.DataGridView();
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.btn_chinhsua = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_themsanpham = new System.Windows.Forms.Button();
            this.directorySearcher3 = new System.DirectoryServices.DirectorySearcher();
            this.panel2 = new System.Windows.Forms.Panel();
            this.cb_tinhtrangkho = new System.Windows.Forms.ComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cb_mucgia
            // 
            this.cb_mucgia.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_mucgia.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_mucgia.FormattingEnabled = true;
            this.cb_mucgia.Location = new System.Drawing.Point(185, 56);
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
            this.btn_timkiem.Location = new System.Drawing.Point(533, 25);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(93, 59);
            this.btn_timkiem.TabIndex = 8;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(13, 389);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(99, 23);
            this.label6.TabIndex = 40;
            this.label6.Text = "Ngày nhập";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(13, 456);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(84, 23);
            this.label7.TabIndex = 39;
            this.label7.Text = "Số lượng";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(13, 529);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(90, 23);
            this.label5.TabIndex = 37;
            this.label5.Text = "Tổng tiền";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(13, 251);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(126, 23);
            this.label4.TabIndex = 36;
            this.label4.Text = "Tên nhân viên";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(13, 318);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(99, 23);
            this.label3.TabIndex = 35;
            this.label3.Text = "Tình trạng";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(13, 180);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 23);
            this.label2.TabIndex = 34;
            this.label2.Text = "Mã kho";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 107);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 23);
            this.label1.TabIndex = 33;
            this.label1.Text = "Mã nhập kho";
            // 
            // tb_tongtiennk
            // 
            this.tb_tongtiennk.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tongtiennk.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tongtiennk.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tongtiennk.Location = new System.Drawing.Point(216, 509);
            this.tb_tongtiennk.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tongtiennk.Multiline = true;
            this.tb_tongtiennk.Name = "tb_tongtiennk";
            this.tb_tongtiennk.ReadOnly = true;
            this.tb_tongtiennk.Size = new System.Drawing.Size(227, 43);
            this.tb_tongtiennk.TabIndex = 31;
            this.tb_tongtiennk.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
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
            // tb_soluong
            // 
            this.tb_soluong.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_soluong.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_soluong.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_soluong.Location = new System.Drawing.Point(215, 436);
            this.tb_soluong.Margin = new System.Windows.Forms.Padding(4);
            this.tb_soluong.Multiline = true;
            this.tb_soluong.Name = "tb_soluong";
            this.tb_soluong.ReadOnly = true;
            this.tb_soluong.Size = new System.Drawing.Size(227, 43);
            this.tb_soluong.TabIndex = 30;
            this.tb_soluong.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_ngnhap
            // 
            this.tb_ngnhap.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_ngnhap.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_ngnhap.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_ngnhap.Location = new System.Drawing.Point(215, 369);
            this.tb_ngnhap.Margin = new System.Windows.Forms.Padding(4);
            this.tb_ngnhap.Multiline = true;
            this.tb_ngnhap.Name = "tb_ngnhap";
            this.tb_ngnhap.ReadOnly = true;
            this.tb_ngnhap.Size = new System.Drawing.Size(227, 43);
            this.tb_ngnhap.TabIndex = 29;
            this.tb_ngnhap.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_tennv
            // 
            this.tb_tennv.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tennv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tennv.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tennv.Location = new System.Drawing.Point(215, 231);
            this.tb_tennv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tennv.Multiline = true;
            this.tb_tennv.Name = "tb_tennv";
            this.tb_tennv.ReadOnly = true;
            this.tb_tennv.Size = new System.Drawing.Size(227, 43);
            this.tb_tennv.TabIndex = 28;
            this.tb_tennv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // tb_tinhtrangkho
            // 
            this.tb_tinhtrangkho.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_tinhtrangkho.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tinhtrangkho.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tinhtrangkho.Location = new System.Drawing.Point(215, 298);
            this.tb_tinhtrangkho.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tinhtrangkho.Multiline = true;
            this.tb_tinhtrangkho.Name = "tb_tinhtrangkho";
            this.tb_tinhtrangkho.ReadOnly = true;
            this.tb_tinhtrangkho.Size = new System.Drawing.Size(227, 43);
            this.tb_tinhtrangkho.TabIndex = 27;
            this.tb_tinhtrangkho.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // cb_ngaynhap
            // 
            this.cb_ngaynhap.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_ngaynhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_ngaynhap.FormattingEnabled = true;
            this.cb_ngaynhap.Location = new System.Drawing.Point(11, 56);
            this.cb_ngaynhap.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cb_ngaynhap.Name = "cb_ngaynhap";
            this.cb_ngaynhap.Size = new System.Drawing.Size(168, 28);
            this.cb_ngaynhap.TabIndex = 11;
            this.cb_ngaynhap.Text = "Ngày nhập";
            // 
            // directorySearcher4
            // 
            this.directorySearcher4.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher4.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // tb_makho
            // 
            this.tb_makho.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_makho.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_makho.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_makho.Location = new System.Drawing.Point(215, 160);
            this.tb_makho.Margin = new System.Windows.Forms.Padding(4);
            this.tb_makho.Multiline = true;
            this.tb_makho.Name = "tb_makho";
            this.tb_makho.ReadOnly = true;
            this.tb_makho.Size = new System.Drawing.Size(227, 43);
            this.tb_makho.TabIndex = 26;
            this.tb_makho.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // directorySearcher2
            // 
            this.directorySearcher2.ClientTimeout = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerPageTimeLimit = System.TimeSpan.Parse("-00:00:01");
            this.directorySearcher2.ServerTimeLimit = System.TimeSpan.Parse("-00:00:01");
            // 
            // tb_mank
            // 
            this.tb_mank.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tb_mank.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_mank.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_mank.Location = new System.Drawing.Point(215, 94);
            this.tb_mank.Margin = new System.Windows.Forms.Padding(4);
            this.tb_mank.Multiline = true;
            this.tb_mank.Name = "tb_mank";
            this.tb_mank.ReadOnly = true;
            this.tb_mank.Size = new System.Drawing.Size(227, 43);
            this.tb_mank.TabIndex = 25;
            this.tb_mank.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
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
            this.ProductList.Location = new System.Drawing.Point(11, 108);
            this.ProductList.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.ProductList.Name = "ProductList";
            this.ProductList.ReadOnly = true;
            this.ProductList.RowHeadersWidth = 51;
            this.ProductList.RowTemplate.Height = 24;
            this.ProductList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ProductList.Size = new System.Drawing.Size(616, 612);
            this.ProductList.TabIndex = 13;
            this.ProductList.TabStop = false;
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_timkiem.Location = new System.Drawing.Point(11, 25);
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
            this.btn_themsanpham.Text = "Thêm sản phẩm";
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
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.tb_tongtiennk);
            this.panel2.Controls.Add(this.tb_soluong);
            this.panel2.Controls.Add(this.tb_ngnhap);
            this.panel2.Controls.Add(this.tb_tennv);
            this.panel2.Controls.Add(this.tb_tinhtrangkho);
            this.panel2.Controls.Add(this.tb_makho);
            this.panel2.Controls.Add(this.tb_mank);
            this.panel2.Controls.Add(this.btn_chinhsua);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Controls.Add(this.btn_themsanpham);
            this.panel2.Location = new System.Drawing.Point(627, 5);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(455, 716);
            this.panel2.TabIndex = 14;
            // 
            // cb_tinhtrangkho
            // 
            this.cb_tinhtrangkho.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cb_tinhtrangkho.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_tinhtrangkho.FormattingEnabled = true;
            this.cb_tinhtrangkho.Location = new System.Drawing.Point(357, 56);
            this.cb_tinhtrangkho.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cb_tinhtrangkho.Name = "cb_tinhtrangkho";
            this.cb_tinhtrangkho.Size = new System.Drawing.Size(168, 28);
            this.cb_tinhtrangkho.TabIndex = 9;
            this.cb_tinhtrangkho.Text = "Tình trạng";
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
            this.panel1.Controls.Add(this.cb_tinhtrangkho);
            this.panel1.Controls.Add(this.cb_mucgia);
            this.panel1.Controls.Add(this.cb_ngaynhap);
            this.panel1.Controls.Add(this.btn_timkiem);
            this.panel1.Location = new System.Drawing.Point(1, 2);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1081, 729);
            this.panel1.TabIndex = 1;
            // 
            // StorageManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1083, 731);
            this.Controls.Add(this.panel1);
            this.DoubleBuffered = true;
            this.Name = "StorageManagement";
            this.Text = "StorageManagement";
            ((System.ComponentModel.ISupportInitialize)(this.ProductList)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cb_mucgia;
        private System.Windows.Forms.Button btn_timkiem;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_tongtiennk;
        private System.DirectoryServices.DirectorySearcher directorySearcher1;
        private System.DirectoryServices.DirectorySearcher directorySearcher7;
        private System.DirectoryServices.DirectorySearcher directorySearcher6;
        private System.DirectoryServices.DirectorySearcher directorySearcher5;
        private System.Windows.Forms.TextBox tb_soluong;
        private System.Windows.Forms.TextBox tb_ngnhap;
        private System.Windows.Forms.TextBox tb_tennv;
        private System.Windows.Forms.TextBox tb_tinhtrangkho;
        private System.Windows.Forms.ComboBox cb_ngaynhap;
        private System.DirectoryServices.DirectorySearcher directorySearcher4;
        private System.Windows.Forms.TextBox tb_makho;
        private System.DirectoryServices.DirectorySearcher directorySearcher2;
        private System.Windows.Forms.TextBox tb_mank;
        private System.Windows.Forms.DataGridView ProductList;
        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.Button btn_chinhsua;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_themsanpham;
        private System.DirectoryServices.DirectorySearcher directorySearcher3;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox cb_tinhtrangkho;
        private System.Windows.Forms.Panel panel1;
    }
}