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
    public partial class Care : UserControl
    {
        DataTable tblCL;
        private readonly object btn_them;
        public Care()
        {
            InitializeComponent();
        }

        private void Care_Load(object sender, EventArgs e)
        {
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            loadDataGRV();
        }

        private void loadDataGRV()
        {
            string sql;
            sql = "SELECT PH.MACSKH, KH.MAKH, KH.HOTEN, PH.NGLAP, PH.NOIDUNG FROM PHIEUCSKH PH INNER JOIN KHACHHANG KH ON PH.MAKH=KH.MAKH";
            tblCL = Class.Funtion.GetDataToTable(sql); //Đọc dữ liệu từ bảng
            careList.DataSource = tblCL; //Nguồn dữ liệu            
            careList.Columns[0].HeaderText = "Mã CSKH";
            careList.Columns[1].HeaderText = "Mã khách hàng";
            careList.Columns[2].HeaderText = "Tên khách hàng";
            careList.Columns[3].HeaderText = "Ngày lập";
            careList.Columns[4].HeaderText = "Nội dung";


            careList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            careList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_macskh.Enabled = false;
            tb_tenkh.Enabled = false;
            mbk_nglap.Enabled = false;
            tb_noidung.Enabled = false;
            tb_makh.Enabled = false;
            //tb_makh.Visible = false;
            //lb_makh.Visible = false;

        }

        private void careList_Click(object sender, EventArgs e)
        {
            if (btn_themcskh.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tenkh.Focus();
                return;
            }
            if (tblCL.Rows.Count == 0) //Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_macskh.Text = careList.CurrentRow.Cells["MACSKH"].Value.ToString();
            tb_tenkh.Text = careList.CurrentRow.Cells["HOTEN"].Value.ToString();
            tb_noidung.Text = careList.CurrentRow.Cells["NOIDUNG"].Value.ToString();
            mbk_nglap.Text = careList.CurrentRow.Cells["NGLAP"].Value.ToString(); 
            tb_makh.Text = careList.CurrentRow.Cells["MAKH"].Value.ToString() ;
            btn_chinhsua.Enabled = true;
            btn_themcskh.Enabled = true;
        }

        private void btn_themcskh_Click(object sender, EventArgs e)
        {
            lb_macskh.Visible = false;
            tb_macskh.Visible = false;
            lb_tenkh.Visible = false;
            tb_tenkh.Visible = false;

            tb_noidung.Enabled = true;
            mbk_nglap.Enabled = true; ;
            tb_makh.Enabled = true;
            tb_makh.Visible = true;
            lb_makh.Visible = true;



            btn_chinhsua.Visible = false;
            btn_themcskh.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;
            ResetValue(); //Xoá trắng các textbox
            tb_makh.Focus();
        }

        private void ResetValue()
        {
            tb_noidung.Text = "";
            tb_makh.Text = "";
            mbk_nglap.Text = "";

        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql; //Lưu lệnh sql

            if (tb_noidung.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập nội dung", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_noidung.Focus();
                return;
            }
            if (tb_makh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_makh.Focus();
                return;
            }
            if (mbk_nglap.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngày bắt đầu ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_nglap.Focus();
                return;
            }




            sql = "INSERT INTO PHIEUCSKH (MAKH, NOIDUNG, NGLAP) VALUES(N'" + tb_makh.Text + "', N'" + tb_noidung.Text + "', N'" + mbk_nglap.Text + "' );";
            Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            loadDataGRV(); //Nạp lại DataGridView
            ResetValue();
            btn_themcskh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;

            lb_macskh.Visible = true;
            tb_macskh.Visible = true;
            lb_tenkh.Visible = true;
            tb_tenkh.Visible = true;
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValue();
            btn_huy.Visible = false;
            btn_themcskh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_luu.Visible = false;
            btn_sua.Visible = false;

            lb_macskh.Visible = true;
            tb_macskh.Visible = true;
            lb_tenkh.Visible = true;
            tb_tenkh.Visible = true;

        }

        private void btn_chinhsua_Click(object sender, EventArgs e)
        {
            lb_macskh.Visible = false;
            tb_macskh.Visible = false;
            lb_tenkh.Visible = false;
            tb_tenkh.Visible = false;



            tb_makh.Enabled = true;
            tb_noidung.Enabled = true;
            mbk_nglap.Enabled = true;

            btn_chinhsua.Visible = false;
            btn_themcskh.Visible = false;
            btn_luu.Visible = false;

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
            if (tb_macskh.Text == "") //nếu chưa chọn bản ghi nào
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_makh.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập mã khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_nglap.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày lập phiếu ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            sql = "UPDATE PHIEUCSKH SET MAKH=N'" + tb_makh.Text.ToString() + "',NOIDUNG=N'" + tb_noidung.Text.ToString() + "',NGLAP=N'" + mbk_nglap.Text.ToString() + "' WHERE MACSKH=N'" + tb_macskh.Text + "'";
            Class.Funtion.RunSQL(sql);
            loadDataGRV();
            ResetValue();

            btn_themcskh.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_sua.Visible = false;

            lb_macskh.Visible = true;
            tb_macskh.Visible = true;
            lb_tenkh.Visible = true;
            tb_tenkh.Visible = true;
        }
    }
}
