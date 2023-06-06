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
        public CustomerManagement()
        {
            InitializeComponent();

            loadCustomerList();

            AddCustomerBinding();
        }
        void loadCustomerList()
        {
            string connectionSTR = "Data Source=LAPTOP-98F0GEC3;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT KH.MAKH, KH.DIEMTICH, TT.HOTEN, TT.SODT, TT.DIACHI, TT.NGSINH, TT.CCCD, TT.EMAIL\r\nFROM KHACHHANG KH\r\nJOIN THONGTIN TT ON KH.MATT = TT.MATT;\r\n";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

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

        private void label5_Click(object sender, EventArgs e)
        {

        }
    }
}
