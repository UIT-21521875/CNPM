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

        private void Staff_Load(object sender, EventArgs e)
        {
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            loadDataGRV();
        }
        private void loadDataGRV()
        {
            string sql;
            sql = "SELECT * FROM NHANVIEN";
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
            staffList.Columns[8].HeaderText = "Căn cước công dân";
            staffList.Columns[9].HeaderText = "Email";


            staffList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            staffList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_hoten.Enabled = false;
            tb_sdt.Enabled = false;
            tb_diachi.Enabled = false;
            mbk_ngaysinh.Enabled = false;
            tb_chucvu.Enabled = false;
            tb_tinhtrang.Enabled = false;
            tb_manv.Enabled = false;
            tb_email.Enabled = false;
            tb_cccd.Enabled = false;
            mbk_ngbdl.Enabled = false;
        }

        private void staffList_Click(object sender, EventArgs e)
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
            tb_chucvu.Text = staffList.CurrentRow.Cells["CHUCVU"].Value.ToString();
            tb_hoten.Text = staffList.CurrentRow.Cells["HOTEN"].Value.ToString();
            tb_sdt.Text = staffList.CurrentRow.Cells["SODT"].Value.ToString();
            tb_diachi.Text = staffList.CurrentRow.Cells["DIACHI"].Value.ToString();
            mbk_ngaysinh.Text = staffList.CurrentRow.Cells["NGSINH"].Value.ToString();
            tb_tinhtrang.Text = staffList.CurrentRow.Cells["TINHTRANG"].Value.ToString();
            tb_cccd.Text = staffList.CurrentRow.Cells["CCCD"].Value.ToString();
            tb_email.Text = staffList.CurrentRow.Cells["EMAIL"].Value.ToString();
            mbk_ngbdl.Text = staffList.CurrentRow.Cells["NGBDL"].Value.ToString();
            btn_chinhsua.Enabled = true;
            btn_themnhanvien.Enabled = true;
        }

        private void btn_themnv_Click(object sender, EventArgs e)
        {
            lb_manv.Visible = false;
            tb_manv.Visible = false;


            tb_hoten.Enabled = true;
            tb_sdt.Enabled = true;
            tb_diachi.Enabled = true;
            mbk_ngaysinh.Enabled = true;
            tb_chucvu.Enabled = true;
            tb_tinhtrang.Enabled = true;
            tb_cccd.Enabled=true;
            tb_email.Enabled=true;
            mbk_ngbdl.Enabled=true;



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
            mbk_ngaysinh.Text = "";
            tb_cccd.Text = "";
            tb_tinhtrang.Text = "";
            tb_email.Text = "";
            mbk_ngbdl.Text = "";

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
            if (tb_chucvu.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập chức vụ  ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_chucvu.Focus();
                return;
            }
            if (tb_tinhtrang.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập tình trạng ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tinhtrang.Focus();
                return;
            }
            if (tb_cccd.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập căn cước công dân ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_cccd.Focus();
                return;
            }
            if (tb_email.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_email.Focus();
                return;
            }
            if (mbk_ngbdl.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngày bắt đầu làm ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_ngbdl.Focus();
                return;
            }




            sql = "INSERT INTO NHANVIEN (CCCD, HOTEN, SODT, NGSINH, EMAIL, DIACHI, CHUCVU, TINHTRANG, NGBDL) VALUES(N'" + tb_cccd.Text + "', N'" + tb_hoten.Text + "', N'" + tb_sdt.Text + "', N'" + mbk_ngaysinh.Text + "', N'" + tb_email.Text + "', N'" + tb_diachi.Text + "', N'" + tb_chucvu.Text + "', N'" + tb_tinhtrang.Text + "', N'" + mbk_ngbdl.Text + "');";
            Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            loadDataGRV(); //Nạp lại DataGridView
            ResetValue();
            btn_themnhanvien.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;

            lb_manv.Visible = true;
            tb_manv.Visible = true;

           
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
            mbk_ngaysinh.Enabled = true;
            tb_tinhtrang.Enabled = true;
            tb_chucvu.Enabled = true;
            tb_cccd.Enabled = true;  
            tb_email.Enabled = true;
            mbk_ngbdl.Enabled = true;

            btn_chinhsua.Visible = false;
            btn_themnhanvien.Visible = false;
            btn_luu.Visible=false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_sua.Visible = true;
            btn_sua.Enabled = true;

        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
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
            if (mbk_ngaysinh.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày sinh ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_chucvu.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập chức vụ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_tinhtrang.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập tình trạng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_cccd.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập cccd", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_email.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập email", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_ngbdl.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày bắt đầu làm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            sql = "UPDATE NHANVIEN SET HOTEN=N'" + tb_hoten.Text.ToString() + "',DIACHI=N'" + tb_diachi.Text.ToString() + "',CCCD=N'" + tb_cccd.Text.ToString() + "',NGSINH=N'" + mbk_ngaysinh.Text.ToString() + "',SODT=N'" + tb_sdt.Text.ToString() + "',EMAIL=N'" + tb_email.Text.ToString() + "',CHUCVU=N'" + tb_chucvu.Text.ToString() + "',TINHTRANG=N'" + tb_tinhtrang.Text.ToString() + "',NGBDL=N'" + mbk_ngbdl.Text.ToString() + "' WHERE MANV=N'" + tb_manv.Text + "'";
            Class.Funtion.RunSQL(sql);
            loadDataGRV();
            ResetValue();

            btn_themnhanvien.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_sua.Visible = false;

            lb_manv.Visible = true;
            tb_manv.Visible = true;



        }
    }
}
