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
        }
        void loadCustomerList()
        {
            string connectionSTR = "Data Source=MSI;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT MAKH, HOTEN, SODT, DIEMTICH\r\nFROM KHACHHANG INNER JOIN THONGTIN\r\nON KHACHHANG.MATT = THONGTIN.MATT";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();

            CustomerList.DataSource = data;
        }
    }
}
