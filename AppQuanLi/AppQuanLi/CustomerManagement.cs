using AppQuanLi.DataProvider;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppQuanLi
{
    public partial class CustomerManagement : Form
    {
        DataTable data = new DataTable();
        public CustomerManagement()
        {
            InitializeComponent();

            loadCustomerList();

            AddCustomerBinding();
        }
        void loadCustomerList()
        {
            string connectionSTR = "Data Source=MSI;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT KH.MAKH, KH.DIEMTICH, TT.HOTEN, TT.SODT, TT.DIACHI, TT.NGSINH, TT.CCCD, TT.EMAIL\r\nFROM KHACHHANG KH\r\nJOIN THONGTIN TT ON KH.MATT = TT.MATT;\r\n";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

           

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();

            CustomerList.DataSource = data;
        }
        void AddCustomerBinding()
        {
            tb_hotenkh.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "HOTEN"));
            tb_makh.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "MAKH"));
            tb_ngaysinh.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "NGSINH"));
            tb_sdt.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "SODT"));
            tb_cccd.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "CCCD"));
            tb_email.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "EMAIL"));
            tb_diachi.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "DIACHI"));
            tb_diem.DataBindings.Add(new Binding("Text", CustomerList.DataSource, "DIEMTICH"));
        }

        private void CustomerList_Click(object sender, EventArgs e)
        {
            if (btn_themkhachhang.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_hotenkh.Focus();
                return;
            }
            if (data.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_makh.Text = CustomerList.CurrentRow.Cells["MAKH"].Value.ToString();
            tb_hotenkh.Text = CustomerList.CurrentRow.Cells["HOTEN"].Value.ToString();
            tb_diachi.Text = CustomerList.CurrentRow.Cells["DIACHI"].Value.ToString();
            tb_sdt.Text = CustomerList.CurrentRow.Cells["SODT"].Value.ToString();
            tb_ngaysinh.Text = CustomerList.CurrentRow.Cells["NGSINH"].Value.ToString();
            btn_chinhsua.Enabled = true;
        }

        private void btn_themkhachhang_Click(object sender, EventArgs e)
        {
            btn_chinhsua.Enabled = false;

           
            btn_luu.Enabled = true;
            btn_themkhachhang.Enabled = false;
            ResetValues();
            tb_makh.Enabled = true;
            tb_makh.Focus();
        }
        private void ResetValues()
        {
            tb_makh.Text = "";
            tb_hotenkh .Text = "";
       
            tb_diachi.Text = "";
            tb_ngaysinh.Text = "";
            tb_sdt.Text = "";
        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql, gt;
            if (tb_makh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tb_makh.Focus();
                return;
            }
            if (tb_hotenkh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập tên nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tb_hotenkh.Focus();
                return;
            }
            if (tb_diachi.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập địa chỉ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
               tb_diachi.Focus();
                return;
            }
            //if (mtbDienThoai.Text == "(   )     -")
            //{
                //MessageBox.Show("Bạn phải nhập điện thoại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //mtbDienThoai.Focus();
                //return;
            //}
            if (tb_ngaysinh.Text == "  /  /")
            {
                MessageBox.Show("Bạn phải nhập ngày sinh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tb_ngaysinh.Focus();
                return;
            }
            
            
            sql = "SELECT MAKH FROM KHACHHANG WHERE MaKH =N'" + tb_makh.Text.Trim() + "'";

            sql = "INSERT INTO KHACHHANG(MAKH,HOTEN,DIACHI,SODT,NGSINH) VALUES (N'" + tb_makh.Text.Trim() + "',N'" + tb_hotenkh.Text.Trim();
            Funtion.RunSQL(sql);
          
            ResetValues();

            btn_themkhachhang.Enabled = true;
            btn_chinhsua.Enabled = true;
   
            btn_luu.Enabled = false;
            tb_makh.Enabled = false;
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
