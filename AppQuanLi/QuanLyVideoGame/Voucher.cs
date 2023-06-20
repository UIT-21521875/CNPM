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
    public partial class Voucher : UserControl
    {
        DataTable tblCL;
        private readonly object btn_them;
        public Voucher()
        {
            InitializeComponent();
        }

        private void Voucher_Load(object sender, EventArgs e)
        {
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            loadDataGRV();
        }

        private void loadDataGRV()
        {
            string sql;
            sql = "SELECT * FROM CTUUDAI";
            tblCL = Class.Funtion.GetDataToTable(sql); //Đọc dữ liệu từ bảng
            voucherList.DataSource = tblCL; //Nguồn dữ liệu            
            voucherList.Columns[0].HeaderText = "Mã chương trình";
            voucherList.Columns[1].HeaderText = "Tên chương trình";
            voucherList.Columns[2].HeaderText = "Mô tả";
            voucherList.Columns[3].HeaderText = "Ngày bắt đầu";
            voucherList.Columns[4].HeaderText = "Ngày kết thúc";


            voucherList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            voucherList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_tenct.Enabled = false;
            tb_mactud.Enabled = false;
            tb_mota.Enabled = false;
            mbk_ngbd.Enabled = false;
            mbk_ngkt.Enabled = false;
        }

        private void voucherList_Click(object sender, EventArgs e)
        {
            if (btn_themuudai.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tenct.Focus();
                return;
            }
            if (tblCL.Rows.Count == 0) //Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_mactud.Text = voucherList.CurrentRow.Cells["MACTUD"].Value.ToString();
            tb_tenct.Text = voucherList.CurrentRow.Cells["TENCTUD"].Value.ToString();
            tb_mota.Text = voucherList.CurrentRow.Cells["MOTA"].Value.ToString();
            mbk_ngbd.Text = voucherList.CurrentRow.Cells["NGBD"].Value.ToString(); ;
            mbk_ngkt.Text = voucherList.CurrentRow.Cells["NGKT"].Value.ToString();
            btn_chinhsua.Enabled = true;
            btn_themuudai.Enabled = true;
        }

        private void btn_themuudai_Click(object sender, EventArgs e)
        {
            lb_mactud.Visible = false;
            tb_mactud.Visible = false;


            tb_mactud.Enabled = true;
            tb_tenct.Enabled = true;
            tb_mota.Enabled = true;
            mbk_ngbd.Enabled = true; ;
            mbk_ngkt.Enabled = true;



            btn_chinhsua.Visible = false;
            btn_themuudai.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;
            ResetValue(); //Xoá trắng các textbox
            tb_tenct.Focus();
        }

        private void ResetValue()
        {
            tb_tenct.Text = "";
            tb_mota.Text = "";
            mbk_ngbd.Text = "";
            mbk_ngkt.Text = "";

        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql; //Lưu lệnh sql

            if (tb_tenct.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập tên chương trình", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tenct.Focus();
                return;
            }
            if (tb_mota.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mô tả cho chương trình", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_mota.Focus();
                return;
            }
            if (mbk_ngbd.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngày bắt đầu ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_ngbd.Focus();
                return;
            }
            if (mbk_ngkt.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngày kết thúc ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_ngkt.Focus();
                return;
            }




            sql = "INSERT INTO CTUUDAI (TENCTUD, MOTA, NGBD, NGKT) VALUES(N'" + tb_tenct.Text + "', N'" + tb_mota.Text + "', N'" + mbk_ngbd.Text + "', N'" + mbk_ngkt.Text + "');";
            Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            loadDataGRV(); //Nạp lại DataGridView
            ResetValue();
            btn_themuudai.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;

            lb_mactud.Visible = true;
            tb_mactud.Visible = true;
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValue();
            btn_huy.Visible = false;
            btn_themuudai.Visible = true;
            btn_chinhsua.Visible = true;
            btn_luu.Visible = false;
            btn_sua.Visible = false;

            lb_mactud.Visible = true;
            tb_mactud.Visible = true;
        }

        private void btn_chinhsua_Click(object sender, EventArgs e)
        {
            lb_mactud.Visible = false;
            tb_mactud.Visible = false;



            tb_tenct.Enabled = true;
            tb_mota.Enabled = true;
            mbk_ngbd.Enabled = true;
            mbk_ngkt.Enabled = true;

            btn_chinhsua.Visible = false;
            btn_themuudai.Visible = false;
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
            if (tb_mactud.Text == "") //nếu chưa chọn bản ghi nào
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_tenct.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập tên chương trình", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_ngbd.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày bắt đầu ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_ngkt.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày kết thúc", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            sql = "UPDATE CTUUDAI SET TENCTUD=N'" + tb_tenct.Text.ToString() + "',MOTA=N'" + tb_mota.Text.ToString() + "',NGBD=N'" + mbk_ngbd.Text.ToString() + "',NGKT=N'" + mbk_ngkt.Text.ToString() + "' WHERE MACTUD=N'" + tb_mactud.Text + "'";
            Class.Funtion.RunSQL(sql);
            loadDataGRV();
            ResetValue();

            btn_themuudai.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_sua.Visible = false;

            lb_mactud.Visible = true;
            tb_mactud.Visible = true;
        }
    }
}
