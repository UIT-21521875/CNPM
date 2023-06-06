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
        public StaffManagement()
        {
            InitializeComponent();

            loadStaffList();

            AddStaffBinding();
        }
        void loadStaffList()
        {
            string connectionSTR = "Data Source=LAPTOP-98F0GEC3;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT NV.*, TT.HOTEN, TT.SODT, TT.DIACHI,TT.NGSINH\r\nFROM NHANVIEN NV\r\nJOIN THONGTIN TT ON NV.MATT = TT.MATT;";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();
            
            staffList.DataSource = data;
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

        private void btn_timkiem_Click(object sender, EventArgs e)
        {

        }

        private void StaffManager_Load(object sender, EventArgs e)
        {

        }

        private void btn_xoasanpham_Click(object sender, EventArgs e)
        {

        }

        private void tb_timkiem_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn_xoasanpham_Click_1(object sender, EventArgs e)
        {

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
    }
}
