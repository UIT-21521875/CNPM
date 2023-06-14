using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyVideoGame
{
    public partial class Staff : UserControl
    {
        DataTable tblCL;
        private readonly object btn_Them;

        public Staff()
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
            sql = "SELECT KH.MAKH, KH.DIEMTICH, TT.HOTEN, TT.SODT, TT.DIACHI, TT.NGSINH, TT.CCCD, TT.EMAIL FROM KHACHHANG KH JOIN THONGTIN TT ON KH.MATT = TT.MATT;";
            tblCL = Class.Funtion.GetDataToTable(sql); //Đọc dữ liệu từ bảng
            staffList.DataSource = tblCL; //Nguồn dữ liệu            
            staffList.Columns[0].HeaderText = "Mã nhân viên";
            staffList.Columns[1].HeaderText = "Họ tên";
            staffList.Columns[2].HeaderText = "Số điện thoại";
            staffList.Columns[3].HeaderText = "Chức vụ";
            staffList.Columns[4].HeaderText = "Địa chỉ";
            staffList.Columns[5].HeaderText = "Tình trạng";
            staffList.Columns[6].HeaderText = "Ngày sinh";
            staffList.Columns[7].HeaderText = "Ngày bắt đầu làm";
            
            
            staffList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            staffList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_hoten.Enabled = false;
            tb_sdt.Enabled = false;
            tb_diachi.Enabled = false;
            tb_ngaysinh.Enabled = false;
            tb_chucvu.Enabled = false;
            tb_tinhtrang.Enabled = false;
            tb_manv.Enabled = false;
            tb_ngaybdl.Enabled = false;

        }

        private void cusList_Click(object sender, EventArgs e)
        {

            if (btn_themnhanvien.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_hoten.Focus();
                return;
            }
            if (tblCL.Rows.Count == 0) //Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_manv.Text = staffList.CurrentRow.Cells["MANV"].Value.ToString();
            tb_chucvu.Text = staffList.CurrentRow.Cells["DIEMTICH"].Value.ToString();
            tb_hoten.Text = staffList.CurrentRow.Cells["HOTEN"].Value.ToString();
            tb_sdt.Text = staffList.CurrentRow.Cells["SODT"].Value.ToString();
            tb_diachi.Text = staffList.CurrentRow.Cells["DIACHI"].Value.ToString();
            tb_ngaysinh.Text = staffList.CurrentRow.Cells["NGSINH"].Value.ToString();
            tb_tinhtrang.Text = staffList.CurrentRow.Cells["CCCD"].Value.ToString();
            tb_ngaybdl.Text = staffList.CurrentRow.Cells["EMAIL"].Value.ToString();
            btn_chinhsua.Enabled = true;
            btn_themnhanvien.Enabled = true;

        }

        private void btn_themkh_Click(object sender, EventArgs e)
        {
            lb_manv.Visible = false;
            tb_manv.Visible = false;


            tb_hoten.Enabled = true;
            tb_sdt.Enabled = true;
            tb_diachi.Enabled = true;
            tb_ngaysinh.Enabled = true;
            tb_chucvu.Enabled = true;
            tb_tinhtrang.Enabled = true;
            tb_ngaybdl.Enabled=true;



            btn_chinhsua.Visible = false;
            btn_themnhanvien.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;
            ResetValue(); //Xoá trắng các textbox
            tb_hoten.Focus();
        }
        private void ResetValue()
        {          
            tb_chucvu.Text = "";
            tb_hoten.Text = "";
            tb_sdt.Text = "";
            tb_diachi.Text = "";
            tb_ngaysinh.Text = "";
            tb_ngaybdl.Text = "";
            tb_tinhtrang.Text = "";
            
            
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
            if (tb_ngaysinh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngay sinh ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_ngaysinh.Focus();
                return;
            }
            if (tb_chucvu.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập căn cước công dân  ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_chucvu.Focus();
                return;
            }
            if (tb_tinhtrang.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tinhtrang.Focus();
                return;
            }
            if (tb_ngaybdl.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_ngaybdl.Focus();
                return;
            }




            //sql = "BEGIN TRANSACTION;\r\nINSERT INTO THONGTIN (HOTEN, SODT, DIACHI, NGSINH, CCCD, EMAIL, MATT) VALUES(N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + tb_diachi.Text + "', N'" + tb_ngaysinh.Text + "', N'" + tb_cccd.Text + "', N'" + tb_email.Text + "')\r\nINSERT INTO KHACHHANG(MAKH, DIEMTICH, MATT)VALUES(N'" + tb_ma.Text + "', N'" + tb_diem.Text + "', N'" + tb_matt.Text + "');\r\nCOMMIT;";
            //Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            //loadDataGRV(); //Nạp lại DataGridView
           // ResetValue();
            //btn_themnhanvien.Visible = true;
            //btn_chinhsua.Visible = true;
            //btn_huy.Visible = false;
            //btn_luu.Visible = false;

            //lb_manv.Visible = true;
            //tb_manv.Visible = true;

           
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValue();
            btn_huy.Visible = false;
            btn_themnhanvien.Visible = true;
            btn_chinhsua.Visible = true;
            btn_luu.Visible = false;

            lb_manv.Visible = true;
            tb_manv.Visible = true;

         

        }

        private void btn_chinhsua_Click(object sender, EventArgs e)
        {

            lb_manv.Visible = false;
            tb_manv.Visible = false;

           

            tb_hoten.Enabled = true;
            tb_sdt.Enabled = true;
            tb_diachi.Enabled = true;
            tb_ngaysinh.Enabled = true;
            tb_tinhtrang.Enabled = true;
            tb_chucvu.Enabled = true;
            tb_ngaybdl.Enabled = true;  

            btn_chinhsua.Visible = false;
            btn_themnhanvien.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;

            string sql; //Lưu câu lệnh sql
            if (tblCL.Rows.Count == 0)
            {
                MessageBox.Show("Không còn dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_manv.Text == "") //nếu chưa chọn bản ghi nào
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
            if (tb_ngaysinh.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày sinh ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_chucvu.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập căn cước công dân", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_tinhtrang.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_ngaybdl.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            // sql = "UPDATE tblChatLieu SET TenChatLieu=N'" + txtTenChatLieu.Text.ToString() + "' WHERE MaChatLieu=N'" + txtMaChatLieu.Text + "'";
            //Class.Funtion.RunSQL(sql);
            //loadDataGRV();
            //ResetValue();

            //btn_themkh.Visible = true;
            //btn_chinhsua.Visible = true;
            //btn_huy.Visible = false;
            //btn_luu.Visible = false;

            //lb_ma.Visible = true;
            //tb_ma.Visible = true;

            //tb_diem.Visible = true;
            //lb_diem.Visible = true;

            //tb_matt.Visible = true;
            //lb_diem.Visible = true;
        }
    }
}
