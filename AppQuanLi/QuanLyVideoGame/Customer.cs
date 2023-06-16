using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace QuanLyVideoGame
{
    public partial class Customer : UserControl
    {
        DataTable tblCL;
        private readonly object btn_Them;

        public Customer()
        {
            InitializeComponent();

        }

        private void Customer_Load(object sender, EventArgs e)
        {
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            loadDataGRV();
        }
        private void loadDataGRV()
        {
            string sql;
            sql = "SELECT * FROM KHACHHANG";
            tblCL = Class.Funtion.GetDataToTable(sql); //Đọc dữ liệu từ bảng
            cusList.DataSource = tblCL; //Nguồn dữ liệu            
            cusList.Columns[0].HeaderText = "Mã khách hàng";

            cusList.Columns[1].HeaderText = "Điểm tích";

            cusList.Columns[2].HeaderText = "Họ tên";
            cusList.Columns[3].HeaderText = "Số điện thoại";
            cusList.Columns[4].HeaderText = "Địa chỉ";
            cusList.Columns[5].HeaderText = "Ngày sinh";
            cusList.Columns[6].HeaderText = "Căn cước công dân";
            cusList.Columns[7].HeaderText = "Email ";
            cusList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            cusList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_hoten.Enabled = false;
            tb_sdt.Enabled = false;
            tb_diachi.Enabled = false;
            mbk_ngaysinh.Enabled = false;
            tb_cccd.Enabled = false;
            tb_email.Enabled = false;
            tb_diem.Enabled = false;
            tb_ma.Enabled = false;
           

        }

        private void cusList_Click(object sender, EventArgs e)
        {

            if (btn_themkh.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_ma.Focus();
                return;
            }
            if (tblCL.Rows.Count == 0) //Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_ma.Text = cusList.CurrentRow.Cells["MAKH"].Value.ToString();
            tb_diem.Text = cusList.CurrentRow.Cells["DIEMTICH"].Value.ToString();
            tb_hoten.Text = cusList.CurrentRow.Cells["HOTEN"].Value.ToString();
            tb_sdt.Text = cusList.CurrentRow.Cells["SODT"].Value.ToString();
            tb_diachi.Text = cusList.CurrentRow.Cells["DIACHI"].Value.ToString();
            mbk_ngaysinh.Text = cusList.CurrentRow.Cells["NGSINH"].Value.ToString();
            tb_cccd.Text = cusList.CurrentRow.Cells["CCCD"].Value.ToString();
            tb_email.Text = cusList.CurrentRow.Cells["EMAIL"].Value.ToString();
            btn_chinhsua.Enabled = true;
            btn_themkh.Enabled = true;

        }

        private void btn_themkh_Click(object sender, EventArgs e)
        {
            lb_ma.Visible = false;
            tb_ma.Visible = false;

            tb_diem.Visible = false;
            lb_diem.Visible = false;

            
            tb_hoten.Enabled = true;
            tb_sdt.Enabled = true;
            tb_diachi.Enabled = true;
            mbk_ngaysinh.Enabled = true;
            tb_cccd.Enabled = true;
            tb_email.Enabled = true;



            btn_chinhsua.Visible = false;
            btn_themkh.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;
            ResetValue(); //Xoá trắng các textbox
            tb_hoten.Focus();
        }
        private void ResetValue()
        {
            tb_ma.Text = "";
            tb_ma.Text = "";
            tb_diem.Text = "";
            tb_hoten.Text = "";
            tb_sdt.Text = "";
            tb_diachi.Text = "";
            mbk_ngaysinh.Text = "";
            tb_cccd.Text = "";
            tb_email.Text = "";
           

        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql; //Lưu lệnh sql

            if (tb_hoten.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập họ tên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_hoten.Focus();
                return;
            }
            if (tb_sdt.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập số điện thoại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_sdt.Focus();
                return;
            }


            if (tb_diachi.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập địa chỉ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_diachi.Focus();
                return;
            }
            if (mbk_ngaysinh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngay sinh ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_ngaysinh.Focus();
                return;
            }
            if (tb_cccd.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập căn cước công dân  ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_cccd.Focus();
                return;
            }
            if (tb_email.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_email.Focus();
                return;
            }



            sql = "INSERT INTO KHACHHANG (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI) VALUES(N'" + tb_cccd.Text + "', N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + mbk_ngaysinh.Text + "', N'" + tb_email.Text + "', N'" + tb_diachi.Text + "');";
            Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            loadDataGRV(); //Nạp lại DataGridView
            ResetValue();
            btn_themkh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;

            lb_ma.Visible = true;
            tb_ma.Visible = true;

            tb_diem.Visible = true;
            lb_diem.Visible = true;

            
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValue();
            btn_huy.Visible = false;
            btn_themkh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_luu.Visible = false;

            lb_ma.Visible = true;
            tb_ma.Visible = true;

            tb_diem.Visible = true;
            lb_diem.Visible = true;

           
        }

        private void btn_chinhsua_Click(object sender, EventArgs e)
        {

            lb_ma.Visible = false;
            tb_ma.Visible = false;

            tb_diem.Visible = false;
            lb_diem.Visible = false;

          
            tb_hoten.Enabled = true;
            tb_sdt.Enabled = true;
            tb_diachi.Enabled = true;
            mbk_ngaysinh.Enabled = true;
            tb_cccd.Enabled = true;
            tb_email.Enabled = true;



            btn_chinhsua.Visible = false;
            btn_themkh.Visible = false;
            btn_luu .Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_sua.Visible = true;
            btn_sua.Enabled = true;


        }

        private void btn_Sửa_Click(object sender, EventArgs e)
        {
            string sql; //Lưu câu lệnh sql
            if (tblCL.Rows.Count == 0)
            {
                MessageBox.Show("Không còn dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_ma.Text == "") //nếu chưa chọn bản ghi nào
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_hoten.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập họ tên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_sdt.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập số điện thoại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_diachi.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập địa chỉ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_ngaysinh.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày sinh ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_cccd.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập căn cước công dân", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_email.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            sql = "UPDATE KHACHHANG SET HOTEN=N'" + tb_hoten.Text.ToString() + "',DIACHI=N'" +tb_diachi.Text.ToString() + "',CCCD=N'" + tb_cccd.Text.ToString() + "',NGSINH=N'" + mbk_ngaysinh.Text.ToString() + "',SODT=N'" + tb_sdt.Text.ToString() + "',EMAIL=N'" + tb_email.Text.ToString() + "' WHERE MAKH=N'" + tb_ma.Text + "'";
            Class.Funtion.RunSQL(sql);
            loadDataGRV();
            ResetValue();

            btn_themkh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_sua.Visible = false;

            lb_ma.Visible = true;
            tb_ma.Visible = true;

            tb_diem.Visible = true;
            lb_diem.Visible = true;
        }
    }
}
