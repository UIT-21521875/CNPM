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
            this.pn_stafflist = new System.Windows.Forms.Panel();
            this.CustomerList = new System.Windows.Forms.DataGridView();
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.btn_timkiem = new System.Windows.Forms.Button();
            this.btn_khachhang_xemthongtin = new System.Windows.Forms.Button();
            this.btn_themkhachhang = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.pn_stafflist.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.pn_stafflist);
            this.panel1.Controls.Add(this.tb_timkiem);
            this.panel1.Controls.Add(this.btn_timkiem);
            this.panel1.Controls.Add(this.btn_khachhang_xemthongtin);
            this.panel1.Controls.Add(this.btn_themkhachhang);
            this.panel1.Location = new System.Drawing.Point(24, 58);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1034, 614);
            this.panel1.TabIndex = 1;
            // 
            // pn_stafflist
            // 
            this.pn_stafflist.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pn_stafflist.Controls.Add(this.CustomerList);
            this.pn_stafflist.Location = new System.Drawing.Point(38, 186);
            this.pn_stafflist.Name = "pn_stafflist";
            this.pn_stafflist.Size = new System.Drawing.Size(959, 392);
            this.pn_stafflist.TabIndex = 19;
            // 
            // CustomerList
            // 
            this.CustomerList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.CustomerList.BackgroundColor = System.Drawing.Color.White;
            this.CustomerList.ColumnHeadersHeight = 35;
            this.CustomerList.Location = new System.Drawing.Point(0, 0);
            this.CustomerList.Name = "CustomerList";
            this.CustomerList.RowHeadersWidth = 51;
            this.CustomerList.RowTemplate.Height = 24;
            this.CustomerList.Size = new System.Drawing.Size(959, 392);
            this.CustomerList.TabIndex = 0;
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.tb_timkiem.Location = new System.Drawing.Point(38, 77);
            this.tb_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.tb_timkiem.Multiline = true;
            this.tb_timkiem.Name = "tb_timkiem";
            this.tb_timkiem.Size = new System.Drawing.Size(516, 25);
            this.tb_timkiem.TabIndex = 18;
            // 
            // btn_timkiem
            // 
            this.btn_timkiem.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_timkiem.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btn_timkiem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_timkiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_timkiem.ForeColor = System.Drawing.Color.Black;
            this.btn_timkiem.Location = new System.Drawing.Point(560, 58);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(168, 55);
            this.btn_timkiem.TabIndex = 14;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            // 
            // btn_khachhang_xemthongtin
            // 
            this.btn_khachhang_xemthongtin.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_khachhang_xemthongtin.BackColor = System.Drawing.Color.Violet;
            this.btn_khachhang_xemthongtin.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_khachhang_xemthongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_khachhang_xemthongtin.Location = new System.Drawing.Point(800, 36);
            this.btn_khachhang_xemthongtin.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_khachhang_xemthongtin.Name = "btn_khachhang_xemthongtin";
            this.btn_khachhang_xemthongtin.Size = new System.Drawing.Size(197, 39);
            this.btn_khachhang_xemthongtin.TabIndex = 16;
            this.btn_khachhang_xemthongtin.Text = "Xem thông tin";
            this.btn_khachhang_xemthongtin.UseVisualStyleBackColor = false;
            // 
            // btn_themkhachhang
            // 
            this.btn_themkhachhang.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btn_themkhachhang.BackColor = System.Drawing.Color.Violet;
            this.btn_themkhachhang.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themkhachhang.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themkhachhang.Location = new System.Drawing.Point(800, 125);
            this.btn_themkhachhang.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themkhachhang.Name = "btn_themkhachhang";
            this.btn_themkhachhang.Size = new System.Drawing.Size(197, 39);
            this.btn_themkhachhang.TabIndex = 17;
            this.btn_themkhachhang.Text = "Thêm nhân viên";
            this.btn_themkhachhang.UseVisualStyleBackColor = false;
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
            this.pn_stafflist.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.CustomerList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel pn_stafflist;
        private System.Windows.Forms.DataGridView CustomerList;
        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.Button btn_timkiem;
        private System.Windows.Forms.Button btn_khachhang_xemthongtin;
        private System.Windows.Forms.Button btn_themkhachhang;
    }
}