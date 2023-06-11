namespace AppQuanLi
{
    partial class VideoGame
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(VideoGame));
            this.panel2 = new System.Windows.Forms.Panel();
            this.Menu = new System.Windows.Forms.PictureBox();
            this.pb_menu = new System.Windows.Forms.PictureBox();
            this.pn_button = new System.Windows.Forms.Panel();
            this.btn_staff = new System.Windows.Forms.Button();
            this.btn_customer = new System.Windows.Forms.Button();
            this.btn_logout = new System.Windows.Forms.Button();
            this.btn_care = new System.Windows.Forms.Button();
            this.btn_target = new System.Windows.Forms.Button();
            this.btn_point = new System.Windows.Forms.Button();
            this.btn_voucher = new System.Windows.Forms.Button();
            this.btn_sell = new System.Windows.Forms.Button();
            this.btn_gara = new System.Windows.Forms.Button();
            this.btn_productt = new System.Windows.Forms.Button();
            this.sidebarTimer = new System.Windows.Forms.Timer(this.components);
            this.pn_show = new System.Windows.Forms.Panel();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Menu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_menu)).BeginInit();
            this.pn_button.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Controls.Add(this.Menu);
            this.panel2.Controls.Add(this.pb_menu);
            this.panel2.Location = new System.Drawing.Point(12, 12);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(255, 87);
            this.panel2.TabIndex = 0;
            // 
            // Menu
            // 
            this.Menu.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Menu.Image = global::AppQuanLi.Properties.Resources._21;
            this.Menu.Location = new System.Drawing.Point(3, 7);
            this.Menu.Name = "Menu";
            this.Menu.Size = new System.Drawing.Size(76, 69);
            this.Menu.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.Menu.TabIndex = 0;
            this.Menu.TabStop = false;

            // 
            // pb_menu
            // 
            this.pb_menu.BackgroundImage = global::AppQuanLi.Properties.Resources._22;
            this.pb_menu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pb_menu.Image = global::AppQuanLi.Properties.Resources._22;
            this.pb_menu.Location = new System.Drawing.Point(85, 7);
            this.pb_menu.Name = "pb_menu";
            this.pb_menu.Size = new System.Drawing.Size(165, 69);
            this.pb_menu.TabIndex = 1;
            this.pb_menu.TabStop = false;
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
            this.pn_button.Controls.Add(this.btn_point);
            this.pn_button.Controls.Add(this.btn_voucher);
            this.pn_button.Controls.Add(this.btn_sell);
            this.pn_button.Controls.Add(this.btn_gara);
            this.pn_button.Controls.Add(this.btn_productt);
            this.pn_button.Location = new System.Drawing.Point(15, 106);
            this.pn_button.Name = "pn_button";
            this.pn_button.Size = new System.Drawing.Size(257, 688);
            this.pn_button.TabIndex = 4;
            // 
            // btn_staff
            // 
            this.btn_staff.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_staff.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_staff.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_staff.ForeColor = System.Drawing.Color.Aqua;
            this.btn_staff.Image = global::AppQuanLi.Properties.Resources._1;
            this.btn_staff.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_staff.Location = new System.Drawing.Point(4, 2);
            this.btn_staff.Name = "btn_staff";
            this.btn_staff.Size = new System.Drawing.Size(250, 63);
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
            this.btn_customer.Image = global::AppQuanLi.Properties.Resources._3;
            this.btn_customer.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_customer.Location = new System.Drawing.Point(3, 69);
            this.btn_customer.Name = "btn_customer";
            this.btn_customer.Size = new System.Drawing.Size(250, 63);
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
            this.btn_logout.Image = global::AppQuanLi.Properties.Resources._19;
            this.btn_logout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_logout.Location = new System.Drawing.Point(3, 621);
            this.btn_logout.Name = "btn_logout";
            this.btn_logout.Size = new System.Drawing.Size(250, 63);
            this.btn_logout.TabIndex = 1;
            this.btn_logout.Text = "Đăng xuất";
            this.btn_logout.UseVisualStyleBackColor = false;
            this.btn_logout.Click += new System.EventHandler(this.btn_logout_Click);
            // 
            // btn_care
            // 
            this.btn_care.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_care.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_care.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_care.ForeColor = System.Drawing.Color.Aqua;
            this.btn_care.Image = global::AppQuanLi.Properties.Resources._17;
            this.btn_care.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_care.Location = new System.Drawing.Point(3, 552);
            this.btn_care.Name = "btn_care";
            this.btn_care.Size = new System.Drawing.Size(250, 63);
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
            this.btn_target.Image = global::AppQuanLi.Properties.Resources._15;
            this.btn_target.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_target.Location = new System.Drawing.Point(3, 483);
            this.btn_target.Name = "btn_target";
            this.btn_target.Size = new System.Drawing.Size(250, 63);
            this.btn_target.TabIndex = 1;
            this.btn_target.Text = "Doanh thu";
            this.btn_target.UseVisualStyleBackColor = false;
            this.btn_target.Click += new System.EventHandler(this.btn_target_Click);
            // 
            // btn_point
            // 
            this.btn_point.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_point.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_point.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_point.ForeColor = System.Drawing.Color.Aqua;
            this.btn_point.Image = global::AppQuanLi.Properties.Resources._9;
            this.btn_point.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_point.Location = new System.Drawing.Point(3, 414);
            this.btn_point.Name = "btn_point";
            this.btn_point.Size = new System.Drawing.Size(250, 63);
            this.btn_point.TabIndex = 1;
            this.btn_point.Text = "Tích điểm";
            this.btn_point.UseVisualStyleBackColor = false;
            this.btn_point.Click += new System.EventHandler(this.btn_point_Click);
            // 
            // btn_voucher
            // 
            this.btn_voucher.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_voucher.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_voucher.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_voucher.ForeColor = System.Drawing.Color.Aqua;
            this.btn_voucher.Image = global::AppQuanLi.Properties.Resources._11;
            this.btn_voucher.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_voucher.Location = new System.Drawing.Point(3, 345);
            this.btn_voucher.Name = "btn_voucher";
            this.btn_voucher.Size = new System.Drawing.Size(250, 63);
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
            this.btn_sell.Image = global::AppQuanLi.Properties.Resources._13;
            this.btn_sell.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_sell.Location = new System.Drawing.Point(3, 276);
            this.btn_sell.Name = "btn_sell";
            this.btn_sell.Size = new System.Drawing.Size(250, 63);
            this.btn_sell.TabIndex = 1;
            this.btn_sell.Text = "Bán hàng";
            this.btn_sell.UseVisualStyleBackColor = false;
            this.btn_sell.Click += new System.EventHandler(this.btn_sell_Click);
            // 
            // btn_gara
            // 
            this.btn_gara.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_gara.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_gara.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_gara.ForeColor = System.Drawing.Color.Aqua;
            this.btn_gara.Image = global::AppQuanLi.Properties.Resources._7;
            this.btn_gara.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_gara.Location = new System.Drawing.Point(3, 207);
            this.btn_gara.Name = "btn_gara";
            this.btn_gara.Size = new System.Drawing.Size(250, 63);
            this.btn_gara.TabIndex = 1;
            this.btn_gara.Text = "Kho";
            this.btn_gara.UseVisualStyleBackColor = false;
            this.btn_gara.Click += new System.EventHandler(this.btn_gara_Click);
            // 
            // btn_productt
            // 
            this.btn_productt.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btn_productt.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_productt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_productt.ForeColor = System.Drawing.Color.Aqua;
            this.btn_productt.Image = global::AppQuanLi.Properties.Resources._5;
            this.btn_productt.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_productt.Location = new System.Drawing.Point(3, 138);
            this.btn_productt.Name = "btn_productt";
            this.btn_productt.Size = new System.Drawing.Size(250, 63);
            this.btn_productt.TabIndex = 1;
            this.btn_productt.Text = "Sản phẩm";
            this.btn_productt.UseVisualStyleBackColor = false;
            this.btn_productt.Click += new System.EventHandler(this.btn_productt_Click);
            // 
            // sidebarTimer
            // 
            this.sidebarTimer.Interval = 50;
            // 
            // pn_show
            // 
            this.pn_show.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pn_show.BackgroundImage = global::AppQuanLi.Properties.Resources.gamezone;
            this.pn_show.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pn_show.Location = new System.Drawing.Point(278, 12);
            this.pn_show.Name = "pn_show";
            this.pn_show.Size = new System.Drawing.Size(1100, 778);
            this.pn_show.TabIndex = 6;
            this.pn_show.Paint += new System.Windows.Forms.PaintEventHandler(this.pn_show_Paint);
            // 
            // VideoGame
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSlateGray;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1400, 814);
            this.Controls.Add(this.pn_show);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.pn_button);
            this.DoubleBuffered = true;
            this.Name = "VideoGame";
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Menu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pb_menu)).EndInit();
            this.pn_button.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btn_staff;
        private System.Windows.Forms.Button btn_customer;
        private System.Windows.Forms.Button btn_productt;
        private System.Windows.Forms.Button btn_gara;
        private System.Windows.Forms.Button btn_sell;
        private System.Windows.Forms.Button btn_target;
        private System.Windows.Forms.Button btn_voucher;
        private System.Windows.Forms.Button btn_point;
        private System.Windows.Forms.Button btn_care;
        private System.Windows.Forms.PictureBox Menu;
        private System.Windows.Forms.Button btn_logout;
        private System.Windows.Forms.Timer sidebarTimer;
        private System.Windows.Forms.PictureBox pb_menu;
        private System.Windows.Forms.Panel pn_button;
        private System.Windows.Forms.Panel pn_show;
    }
}