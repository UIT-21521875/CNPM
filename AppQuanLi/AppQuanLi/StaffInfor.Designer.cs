namespace AppQuanLi
{
    partial class StaffInfor
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
            this.tb_name = new System.Windows.Forms.TextBox();
            this.tb_diachi = new System.Windows.Forms.TextBox();
            this.tb_chucvu = new System.Windows.Forms.TextBox();
            this.tb_tinhtrang = new System.Windows.Forms.TextBox();
            this.tb_manv = new System.Windows.Forms.TextBox();
            this.tb_email = new System.Windows.Forms.TextBox();
            this.tb_numPhone = new System.Windows.Forms.TextBox();
            this.tb_birthday = new System.Windows.Forms.TextBox();
            this.btn_edit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // tb_name
            // 
            this.tb_name.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_name.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_name.Location = new System.Drawing.Point(289, 185);
            this.tb_name.Margin = new System.Windows.Forms.Padding(4);
            this.tb_name.Multiline = true;
            this.tb_name.Name = "tb_name";
            this.tb_name.ReadOnly = true;
            this.tb_name.Size = new System.Drawing.Size(530, 50);
            this.tb_name.TabIndex = 0;
            this.tb_name.Text = "Họ và tên";
            this.tb_name.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_name.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_diachi
            // 
            this.tb_diachi.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_diachi.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_diachi.Location = new System.Drawing.Point(289, 387);
            this.tb_diachi.Margin = new System.Windows.Forms.Padding(4);
            this.tb_diachi.Multiline = true;
            this.tb_diachi.Name = "tb_diachi";
            this.tb_diachi.ReadOnly = true;
            this.tb_diachi.Size = new System.Drawing.Size(530, 50);
            this.tb_diachi.TabIndex = 0;
            this.tb_diachi.Text = "Địa chỉ";
            this.tb_diachi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_diachi.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_chucvu
            // 
            this.tb_chucvu.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_chucvu.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_chucvu.Location = new System.Drawing.Point(289, 455);
            this.tb_chucvu.Margin = new System.Windows.Forms.Padding(4);
            this.tb_chucvu.Multiline = true;
            this.tb_chucvu.Name = "tb_chucvu";
            this.tb_chucvu.ReadOnly = true;
            this.tb_chucvu.Size = new System.Drawing.Size(227, 42);
            this.tb_chucvu.TabIndex = 0;
            this.tb_chucvu.Text = "Chức vụ";
            this.tb_chucvu.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_chucvu.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_tinhtrang
            // 
            this.tb_tinhtrang.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_tinhtrang.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_tinhtrang.Location = new System.Drawing.Point(592, 455);
            this.tb_tinhtrang.Margin = new System.Windows.Forms.Padding(4);
            this.tb_tinhtrang.Multiline = true;
            this.tb_tinhtrang.Name = "tb_tinhtrang";
            this.tb_tinhtrang.ReadOnly = true;
            this.tb_tinhtrang.Size = new System.Drawing.Size(227, 42);
            this.tb_tinhtrang.TabIndex = 0;
            this.tb_tinhtrang.Text = "Tình trạng";
            this.tb_tinhtrang.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_tinhtrang.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_manv
            // 
            this.tb_manv.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_manv.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_manv.Location = new System.Drawing.Point(289, 263);
            this.tb_manv.Margin = new System.Windows.Forms.Padding(4);
            this.tb_manv.Multiline = true;
            this.tb_manv.Name = "tb_manv";
            this.tb_manv.ReadOnly = true;
            this.tb_manv.Size = new System.Drawing.Size(227, 43);
            this.tb_manv.TabIndex = 0;
            this.tb_manv.Text = "Mã nhân viên";
            this.tb_manv.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_manv.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_email
            // 
            this.tb_email.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_email.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_email.Location = new System.Drawing.Point(289, 327);
            this.tb_email.Margin = new System.Windows.Forms.Padding(4);
            this.tb_email.Multiline = true;
            this.tb_email.Name = "tb_email";
            this.tb_email.ReadOnly = true;
            this.tb_email.Size = new System.Drawing.Size(227, 43);
            this.tb_email.TabIndex = 0;
            this.tb_email.Text = "Email";
            this.tb_email.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_email.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_numPhone
            // 
            this.tb_numPhone.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_numPhone.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_numPhone.Location = new System.Drawing.Point(592, 263);
            this.tb_numPhone.Margin = new System.Windows.Forms.Padding(4);
            this.tb_numPhone.Multiline = true;
            this.tb_numPhone.Name = "tb_numPhone";
            this.tb_numPhone.ReadOnly = true;
            this.tb_numPhone.Size = new System.Drawing.Size(227, 43);
            this.tb_numPhone.TabIndex = 0;
            this.tb_numPhone.Text = "Số điện thoại";
            this.tb_numPhone.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_numPhone.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // tb_birthday
            // 
            this.tb_birthday.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.tb_birthday.Font = new System.Drawing.Font("Microsoft YaHei UI", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_birthday.Location = new System.Drawing.Point(592, 327);
            this.tb_birthday.Margin = new System.Windows.Forms.Padding(4);
            this.tb_birthday.Multiline = true;
            this.tb_birthday.Name = "tb_birthday";
            this.tb_birthday.ReadOnly = true;
            this.tb_birthday.Size = new System.Drawing.Size(227, 43);
            this.tb_birthday.TabIndex = 0;
            this.tb_birthday.Text = "Ngày sinh";
            this.tb_birthday.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.tb_birthday.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // btn_edit
            // 
            this.btn_edit.BackColor = System.Drawing.Color.Violet;
            this.btn_edit.Font = new System.Drawing.Font("Microsoft YaHei UI", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_edit.Location = new System.Drawing.Point(400, 535);
            this.btn_edit.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btn_edit.Name = "btn_edit";
            this.btn_edit.Size = new System.Drawing.Size(320, 73);
            this.btn_edit.TabIndex = 12;
            this.btn_edit.Text = "Chỉnh sửa";
            this.btn_edit.UseVisualStyleBackColor = false;
            this.btn_edit.Click += new System.EventHandler(this.btn_edit_Click_1);
            // 
            // StaffInfor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::AppQuanLi.Properties.Resources.ba;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1082, 731);
            this.Controls.Add(this.btn_edit);
            this.Controls.Add(this.tb_birthday);
            this.Controls.Add(this.tb_numPhone);
            this.Controls.Add(this.tb_email);
            this.Controls.Add(this.tb_manv);
            this.Controls.Add(this.tb_tinhtrang);
            this.Controls.Add(this.tb_chucvu);
            this.Controls.Add(this.tb_diachi);
            this.Controls.Add(this.tb_name);
            this.DoubleBuffered = true;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "StaffInfor";
            this.Text = "Thông tin nhân viên";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tb_name;
        private System.Windows.Forms.TextBox tb_diachi;
        private System.Windows.Forms.TextBox tb_chucvu;
        private System.Windows.Forms.TextBox tb_tinhtrang;
        private System.Windows.Forms.TextBox tb_manv;
        private System.Windows.Forms.TextBox tb_email;
        private System.Windows.Forms.TextBox tb_numPhone;
        private System.Windows.Forms.TextBox tb_birthday;
        private System.Windows.Forms.Button btn_edit;
    }
}