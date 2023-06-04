using AppQuanLi.DAO;
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
           
            string query = "SELECT MAKH, HOTEN, SODT, DIEMTICH\r\nFROM KHACHHANG INNER JOIN THONGTIN\r\nON KHACHHANG.MATT = THONGTIN.MATT";

            CustomerList.DataSource = DataProvider.Instance.ExecuteQuery(query);

        }
    }
}
