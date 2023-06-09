﻿namespace QuanLyVideoGame
{
    partial class Videogamecs
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Videogamecs));
            this.pb_menu = new System.Windows.Forms.PictureBox();
            this.pn_button = new System.Windows.Forms.Panel();
            this.btn_staff = new System.Windows.Forms.Button();
            this.btn_customer = new System.Windows.Forms.Button();
            this.btn_logout = new System.Windows.Forms.Button();
            this.btn_care = new System.Windows.Forms.Button();
            this.btn_target = new System.Windows.Forms.Button();
            this.btn_voucher = new System.Windows.Forms.Button();
            this.btn_sell = new System.Windows.Forms.Button();
            this.btn_productt = new System.Windows.Forms.Button();
            this.pn_show = new System.Windows.Forms.Panel();
            this.invoice1 = new QuanLyVideoGame.Invoice();
            this.care1 = new QuanLyVideoGame.Care();
            this.report1 = new QuanLyVideoGame.Report();
            this.voucher1 = new QuanLyVideoGame.Voucher();
            this.storage1 = new QuanLyVideoGame.Storage();
            this.staff1 = new QuanLyVideoGame.Staff();
            this.product1 = new QuanLyVideoGame.product();
            this.customer1 = new QuanLyVideoGame.Customer();
            ((System.ComponentModel.ISupportInitialize)(this.pb_menu)).BeginInit();
            this.pn_button.SuspendLayout();
            this.pn_show.SuspendLayout();
            this.SuspendLayout();
            // 
            // pb_menu
            // 
            this.pb_menu.BackgroundImage = global::QuanLyVideoGame.Properties.Resources.Untitled_design__1_;
            this.pb_menu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_menu.Location = new System.Drawing.Point(13, 13);
            this.pb_menu.Margin = new System.Windows.Forms.Padding(2);
            this.pb_menu.Name = "pb_menu";
            this.pb_menu.Size = new System.Drawing.Size(195, 61);
            this.pb_menu.TabIndex = 1;
            this.pb_menu.TabStop = false;
            this.pb_menu.Click += new System.EventHandler(this.pb_menu_Click);
            // 
            // pn_button
            // 
            this.pn_button.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pn_button.AutoSize = true;
            this.pn_button.BackColor = System.Drawing.Color.Transparent;
            this.pn_button.Controls.Add(this.btn_staff);
            this.pn_button.Controls.Add(this.btn_customer);
            this.pn_button.Controls.Add(this.btn_logout);
            this.pn_button.Controls.Add(this.btn_care);
            this.pn_button.Controls.Add(this.btn_target);
            this.pn_button.Controls.Add(this.btn_voucher);
            this.pn_button.Controls.Add(this.btn_sell);
            this.pn_button.Controls.Add(this.btn_productt);
            this.pn_button.Location = new System.Drawing.Point(14, 76);
            this.pn_button.Margin = new System.Windows.Forms.Padding(2);
            this.pn_button.Name = "pn_button";
            this.pn_button.Size = new System.Drawing.Size(195, 571);
            this.pn_button.TabIndex = 8;
            // 
            // btn_staff
            // 
            this.btn_staff.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_staff.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_staff.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_staff.ForeColor = System.Drawing.Color.Aqua;
            this.btn_staff.Image = global::QuanLyVideoGame.Properties.Resources._2;
            this.btn_staff.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_staff.Location = new System.Drawing.Point(4, 2);
            this.btn_staff.Margin = new System.Windows.Forms.Padding(2);
            this.btn_staff.Name = "btn_staff";
            this.btn_staff.Size = new System.Drawing.Size(188, 70);
            this.btn_staff.TabIndex = 1;
            this.btn_staff.Text = "Nhân viên";
            this.btn_staff.UseVisualStyleBackColor = false;
            this.btn_staff.Click += new System.EventHandler(this.btn_staff_Click);
            // 
            // btn_customer
            // 
            this.btn_customer.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_customer.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_customer.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_customer.ForeColor = System.Drawing.Color.Aqua;
            this.btn_customer.Image = global::QuanLyVideoGame.Properties.Resources._4;
            this.btn_customer.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_customer.Location = new System.Drawing.Point(4, 72);
            this.btn_customer.Margin = new System.Windows.Forms.Padding(2);
            this.btn_customer.Name = "btn_customer";
            this.btn_customer.Size = new System.Drawing.Size(188, 70);
            this.btn_customer.TabIndex = 1;
            this.btn_customer.Text = "Khách hàng";
            this.btn_customer.UseVisualStyleBackColor = false;
            this.btn_customer.Click += new System.EventHandler(this.btn_customer_Click);
            // 
            // btn_logout
            // 
            this.btn_logout.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_logout.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_logout.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_logout.ForeColor = System.Drawing.Color.LightSalmon;
            this.btn_logout.Image = global::QuanLyVideoGame.Properties.Resources._28;
            this.btn_logout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_logout.Location = new System.Drawing.Point(4, 499);
            this.btn_logout.Margin = new System.Windows.Forms.Padding(2);
            this.btn_logout.Name = "btn_logout";
            this.btn_logout.Size = new System.Drawing.Size(188, 70);
            this.btn_logout.TabIndex = 1;
            this.btn_logout.Text = "Đăng xuất";
            this.btn_logout.UseVisualStyleBackColor = false;
            // 
            // btn_care
            // 
            this.btn_care.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_care.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_care.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_care.ForeColor = System.Drawing.Color.Aqua;
            this.btn_care.Image = global::QuanLyVideoGame.Properties.Resources._20;
            this.btn_care.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_care.Location = new System.Drawing.Point(5, 355);
            this.btn_care.Margin = new System.Windows.Forms.Padding(2);
            this.btn_care.Name = "btn_care";
            this.btn_care.Size = new System.Drawing.Size(188, 70);
            this.btn_care.TabIndex = 1;
            this.btn_care.Text = "Chăm sóc KH";
            this.btn_care.UseVisualStyleBackColor = false;
            this.btn_care.Click += new System.EventHandler(this.btn_care_Click);
            // 
            // btn_target
            // 
            this.btn_target.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_target.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_target.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_target.ForeColor = System.Drawing.Color.Aqua;
            this.btn_target.Image = global::QuanLyVideoGame.Properties.Resources._18;
            this.btn_target.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_target.Location = new System.Drawing.Point(4, 427);
            this.btn_target.Margin = new System.Windows.Forms.Padding(2);
            this.btn_target.Name = "btn_target";
            this.btn_target.Size = new System.Drawing.Size(188, 70);
            this.btn_target.TabIndex = 1;
            this.btn_target.Text = "Doanh thu";
            this.btn_target.UseVisualStyleBackColor = false;
            this.btn_target.Click += new System.EventHandler(this.btn_target_Click);
            // 
            // btn_voucher
            // 
            this.btn_voucher.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_voucher.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_voucher.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_voucher.ForeColor = System.Drawing.Color.Aqua;
            this.btn_voucher.Image = global::QuanLyVideoGame.Properties.Resources._12;
            this.btn_voucher.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_voucher.Location = new System.Drawing.Point(5, 283);
            this.btn_voucher.Margin = new System.Windows.Forms.Padding(2);
            this.btn_voucher.Name = "btn_voucher";
            this.btn_voucher.Size = new System.Drawing.Size(188, 70);
            this.btn_voucher.TabIndex = 1;
            this.btn_voucher.Text = "Khuyến mãi";
            this.btn_voucher.UseVisualStyleBackColor = false;
            this.btn_voucher.Click += new System.EventHandler(this.btn_voucher_Click);
            // 
            // btn_sell
            // 
            this.btn_sell.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_sell.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_sell.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_sell.ForeColor = System.Drawing.Color.Aqua;
            this.btn_sell.Image = global::QuanLyVideoGame.Properties.Resources._14;
            this.btn_sell.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_sell.Location = new System.Drawing.Point(4, 212);
            this.btn_sell.Margin = new System.Windows.Forms.Padding(2);
            this.btn_sell.Name = "btn_sell";
            this.btn_sell.Size = new System.Drawing.Size(188, 70);
            this.btn_sell.TabIndex = 1;
            this.btn_sell.Text = "Hóa đơn bán hàng";
            this.btn_sell.UseVisualStyleBackColor = false;
            this.btn_sell.Click += new System.EventHandler(this.btn_sell_Click);
            // 
            // btn_productt
            // 
            this.btn_productt.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_productt.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_productt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_productt.ForeColor = System.Drawing.Color.Aqua;
            this.btn_productt.Image = global::QuanLyVideoGame.Properties.Resources._6;
            this.btn_productt.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_productt.Location = new System.Drawing.Point(4, 142);
            this.btn_productt.Margin = new System.Windows.Forms.Padding(2);
            this.btn_productt.Name = "btn_productt";
            this.btn_productt.Size = new System.Drawing.Size(188, 70);
            this.btn_productt.TabIndex = 1;
            this.btn_productt.Text = "Sản phẩm";
            this.btn_productt.UseVisualStyleBackColor = false;
            this.btn_productt.Click += new System.EventHandler(this.btn_productt_Click);
            // 
            // pn_show
            // 
            this.pn_show.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pn_show.BackgroundImage = global::QuanLyVideoGame.Properties.Resources.gamezone;
            this.pn_show.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pn_show.Controls.Add(this.invoice1);
            this.pn_show.Controls.Add(this.care1);
            this.pn_show.Controls.Add(this.report1);
            this.pn_show.Controls.Add(this.voucher1);
            this.pn_show.Controls.Add(this.storage1);
            this.pn_show.Controls.Add(this.staff1);
            this.pn_show.Controls.Add(this.product1);
            this.pn_show.Controls.Add(this.customer1);
            this.pn_show.Location = new System.Drawing.Point(212, 13);
            this.pn_show.Margin = new System.Windows.Forms.Padding(2);
            this.pn_show.Name = "pn_show";
            this.pn_show.Size = new System.Drawing.Size(825, 632);
            this.pn_show.TabIndex = 9;
            // 
            // invoice1
            // 
            this.invoice1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("invoice1.BackgroundImage")));
            this.invoice1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.invoice1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.invoice1.Location = new System.Drawing.Point(0, 0);
            this.invoice1.Name = "invoice1";
            this.invoice1.Size = new System.Drawing.Size(825, 632);
            this.invoice1.TabIndex = 10;
            this.invoice1.Visible = false;
            // 
            // care1
            // 
            this.care1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("care1.BackgroundImage")));
            this.care1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.care1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.care1.Location = new System.Drawing.Point(0, 0);
            this.care1.Name = "care1";
            this.care1.Size = new System.Drawing.Size(825, 632);
            this.care1.TabIndex = 10;
            this.care1.Visible = false;
            // 
            // report1
            // 
            this.report1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("report1.BackgroundImage")));
            this.report1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.report1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.report1.Location = new System.Drawing.Point(0, 0);
            this.report1.Name = "report1";
            this.report1.Size = new System.Drawing.Size(825, 632);
            this.report1.TabIndex = 10;
            this.report1.Visible = false;
            // 
            // voucher1
            // 
            this.voucher1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("voucher1.BackgroundImage")));
            this.voucher1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.voucher1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.voucher1.Location = new System.Drawing.Point(0, 0);
            this.voucher1.Name = "voucher1";
            this.voucher1.Size = new System.Drawing.Size(825, 632);
            this.voucher1.TabIndex = 10;
            this.voucher1.Visible = false;
            // 
            // storage1
            // 
            this.storage1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("storage1.BackgroundImage")));
            this.storage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.storage1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.storage1.Location = new System.Drawing.Point(0, 0);
            this.storage1.Name = "storage1";
            this.storage1.Size = new System.Drawing.Size(825, 632);
            this.storage1.TabIndex = 10;
            this.storage1.Visible = false;
            // 
            // staff1
            // 
            this.staff1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("staff1.BackgroundImage")));
            this.staff1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.staff1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.staff1.Location = new System.Drawing.Point(0, 0);
            this.staff1.Name = "staff1";
            this.staff1.Size = new System.Drawing.Size(825, 632);
            this.staff1.TabIndex = 10;
            this.staff1.Visible = false;
            // 
            // product1
            // 
            this.product1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("product1.BackgroundImage")));
            this.product1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.product1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.product1.Location = new System.Drawing.Point(0, 0);
            this.product1.Margin = new System.Windows.Forms.Padding(4);
            this.product1.Name = "product1";
            this.product1.Size = new System.Drawing.Size(825, 632);
            this.product1.TabIndex = 1;
            this.product1.Visible = false;
            // 
            // customer1
            // 
            this.customer1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("customer1.BackgroundImage")));
            this.customer1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.customer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.customer1.Location = new System.Drawing.Point(0, 0);
            this.customer1.Margin = new System.Windows.Forms.Padding(2);
            this.customer1.Name = "customer1";
            this.customer1.Size = new System.Drawing.Size(825, 632);
            this.customer1.TabIndex = 0;
            this.customer1.Visible = false;
            // 
            // Videogamecs
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::QuanLyVideoGame.Properties.Resources._346141969_959893871824418_7342370432422951030_n1;
            this.ClientSize = new System.Drawing.Size(1048, 653);
            this.Controls.Add(this.pb_menu);
            this.Controls.Add(this.pn_button);
            this.Controls.Add(this.pn_show);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.MaximumSize = new System.Drawing.Size(1066, 700);
            this.MinimumSize = new System.Drawing.Size(1066, 700);
            this.Name = "Videogamecs";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Videogamecs";
            this.Load += new System.EventHandler(this.Videogamecs_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pb_menu)).EndInit();
            this.pn_button.ResumeLayout(false);
            this.pn_show.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.PictureBox pb_menu;
        private System.Windows.Forms.Panel pn_button;
        private System.Windows.Forms.Button btn_staff;
        private System.Windows.Forms.Button btn_customer;
        private System.Windows.Forms.Button btn_logout;
        private System.Windows.Forms.Button btn_care;
        private System.Windows.Forms.Button btn_target;
        private System.Windows.Forms.Button btn_voucher;
        private System.Windows.Forms.Button btn_sell;
        private System.Windows.Forms.Button btn_productt;
        private System.Windows.Forms.Panel pn_show;
        private Customer customer1;
        private product product1;
        private Staff staff1;
        private Storage storage1;
        private Voucher voucher1;
        private Report report1;
        private Care care1;
        private Invoice invoice1;
    }
}