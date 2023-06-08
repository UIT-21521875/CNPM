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
    
    public partial class StaffManagement : Form
    {
        DataTable tblKH;
        public StaffManagement()
        {
            InitializeComponent();

            

            AddStaffBinding();
        }
        void loadStaffList()
        {
            string connectionSTR = "Data Source=LAPTOP-98F0GEC3;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT NV.*, TT.HOTEN, TT.SODT, TT.DIACHI,TT.NGSINH\r\nFROM NHANVIEN NV\r\nJOIN THONGTIN TT ON NV.MATT = TT.MATT;";
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

             tblKH = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(tblKH);

            connection.Close();
            
            staffList.DataSource = tblKH;
        }
        void AddStaffBinding()
        {
            tb_hoten.DataBindings.Add(new Binding("Text", staffList.DataSource, "HOTEN"));
            tb_manv.DataBindings.Add(new Binding("Text", staffList.DataSource, "MANV"));
            tb_ngaysinh.DataBindings.Add(new Binding("Text", staffList.DataSource, "NGSINH"));
            tb_sdt.DataBindings.Add(new Binding("Text", staffList.DataSource, "SODT"));
            tb_chucvu.DataBindings.Add(new Binding("Text", staffList.DataSource, "CHUCVU"));
            tb_tinhtrang.DataBindings.Add(new Binding("Text", staffList.DataSource, "TINHTRANG"));
            tb_diachi.DataBindings.Add(new Binding("Text", staffList.DataSource, "DIACHI"));
            tb_ngaybdl.DataBindings.Add(new Binding("Text", staffList.DataSource, "NGBDL"));
        }



        private void btn_themnhanvien_Click(object sender, EventArgs e)
        {
            AddStaffInfor i = new AddStaffInfor();
            i.ShowDialog();
        }

        private void btn_xemthongtin_Click(object sender, EventArgs e)
        {
            StaffInfor s = new StaffInfor();
            s.ShowDialog();
        }

        private void staffList_Click(object sender, EventArgs e)
        {
            if (btn_themnhanvien.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_hoten.Focus();
                return;
            }
            if (tblKH.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_manv.Text = staffList.CurrentRow.Cells["MaNhanVien"].Value.ToString();
            tb_hoten.Text = staffList.CurrentRow.Cells["TenNhanVien"].Value.ToString();
            tb_diachi.Text = staffList.CurrentRow.Cells["DiaChi"].Value.ToString();
            tb_sdt.Text = staffList.CurrentRow.Cells["DienThoai"].Value.ToString();
            tb_ngaysinh.Text = staffList.CurrentRow.Cells["NgaySinh"].Value.ToString();
            btn_chinhsua.Enabled = true;
        }
    }
}
