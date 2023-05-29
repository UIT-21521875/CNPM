namespace AppQuanLi
{
    partial class StaffManager
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
            this.tb_timkiem = new System.Windows.Forms.TextBox();
            this.btn_timkiem = new System.Windows.Forms.Button();
            this.btn_xoasanpham = new System.Windows.Forms.Button();
            this.btn_xemthongtin = new System.Windows.Forms.Button();
            this.btn_themnhanvien = new System.Windows.Forms.Button();
            this.pn_stafflist = new System.Windows.Forms.Panel();
            this.staffList = new System.Windows.Forms.DataGridView();
            this.pn_stafflist.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.staffList)).BeginInit();
            this.SuspendLayout();
            // 
            // tb_timkiem
            // 
            this.tb_timkiem.Location = new System.Drawing.Point(66, 150);
            this.tb_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.tb_timkiem.Multiline = true;
            this.tb_timkiem.Name = "tb_timkiem";
            this.tb_timkiem.Size = new System.Drawing.Size(516, 25);
            this.tb_timkiem.TabIndex = 12;
            this.tb_timkiem.TextChanged += new System.EventHandler(this.tb_timkiem_TextChanged);
            // 
            // btn_timkiem
            // 
            this.btn_timkiem.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btn_timkiem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_timkiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_timkiem.ForeColor = System.Drawing.Color.Black;
            this.btn_timkiem.Location = new System.Drawing.Point(588, 131);
            this.btn_timkiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_timkiem.Name = "btn_timkiem";
            this.btn_timkiem.Size = new System.Drawing.Size(168, 55);
            this.btn_timkiem.TabIndex = 4;
            this.btn_timkiem.Text = "Tìm kiếm";
            this.btn_timkiem.UseVisualStyleBackColor = false;
            this.btn_timkiem.Click += new System.EventHandler(this.btn_timkiem_Click);
            // 
            // btn_xoasanpham
            // 
            this.btn_xoasanpham.BackColor = System.Drawing.Color.Violet;
            this.btn_xoasanpham.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_xoasanpham.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_xoasanpham.Location = new System.Drawing.Point(828, 195);
            this.btn_xoasanpham.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_xoasanpham.Name = "btn_xoasanpham";
            this.btn_xoasanpham.Size = new System.Drawing.Size(197, 39);
            this.btn_xoasanpham.TabIndex = 5;
            this.btn_xoasanpham.Text = "Xóa nhân viên";
            this.btn_xoasanpham.UseVisualStyleBackColor = false;
            this.btn_xoasanpham.Click += new System.EventHandler(this.btn_xoasanpham_Click);
            // 
            // btn_xemthongtin
            // 
            this.btn_xemthongtin.BackColor = System.Drawing.Color.Violet;
            this.btn_xemthongtin.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_xemthongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_xemthongtin.Location = new System.Drawing.Point(828, 109);
            this.btn_xemthongtin.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_xemthongtin.Name = "btn_xemthongtin";
            this.btn_xemthongtin.Size = new System.Drawing.Size(197, 39);
            this.btn_xemthongtin.TabIndex = 6;
            this.btn_xemthongtin.Text = "Xem thông tin";
            this.btn_xemthongtin.UseVisualStyleBackColor = false;
            this.btn_xemthongtin.Click += new System.EventHandler(this.btn_xemthongtin_Click);
            // 
            // btn_themnhanvien
            // 
            this.btn_themnhanvien.BackColor = System.Drawing.Color.Violet;
            this.btn_themnhanvien.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_themnhanvien.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_themnhanvien.Location = new System.Drawing.Point(828, 152);
            this.btn_themnhanvien.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_themnhanvien.Name = "btn_themnhanvien";
            this.btn_themnhanvien.Size = new System.Drawing.Size(197, 39);
            this.btn_themnhanvien.TabIndex = 7;
            this.btn_themnhanvien.Text = "Thêm nhân viên";
            this.btn_themnhanvien.UseVisualStyleBackColor = false;
            this.btn_themnhanvien.Click += new System.EventHandler(this.btn_themnhanvien_Click);
            // 
            // pn_stafflist
            // 
            this.pn_stafflist.Controls.Add(this.staffList);
            this.pn_stafflist.Location = new System.Drawing.Point(66, 259);
            this.pn_stafflist.Name = "pn_stafflist";
            this.pn_stafflist.Size = new System.Drawing.Size(959, 392);
            this.pn_stafflist.TabIndex = 13;
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
            this.staffList.Size = new System.Drawing.Size(959, 392);
            this.staffList.TabIndex = 0;
            // 
            // StaffManager
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1082, 731);
            this.Controls.Add(this.pn_stafflist);
            this.Controls.Add(this.tb_timkiem);
            this.Controls.Add(this.btn_timkiem);
            this.Controls.Add(this.btn_xoasanpham);
            this.Controls.Add(this.btn_xemthongtin);
            this.Controls.Add(this.btn_themnhanvien);
            this.DoubleBuffered = true;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "StaffManager";
            this.Text = "Nhân viên";
            this.Load += new System.EventHandler(this.StaffManager_Load);
            this.pn_stafflist.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.staffList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tb_timkiem;
        private System.Windows.Forms.Button btn_timkiem;
        private System.Windows.Forms.Button btn_xoasanpham;
        private System.Windows.Forms.Button btn_xemthongtin;
        private System.Windows.Forms.Button btn_themnhanvien;
        private System.Windows.Forms.Panel pn_stafflist;
        private System.Windows.Forms.DataGridView staffList;
    }
}