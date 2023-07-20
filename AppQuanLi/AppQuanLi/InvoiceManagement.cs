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
    public partial class InvoiceManagement : Form
    {
        public InvoiceManagement()
        {
            InitializeComponent();
            loadInvoiceList();
            AddInvoiceBinding();
        }
        void loadInvoiceList()
        {
            string connectionSTR = "Data Source=LAPTOP-98F0GEC3;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT HD.*,\r\n       NV_THONGTIN.HOTEN AS HOTEN_NHANVIEN,\r\n       KH_THONGTIN.HOTEN AS HOTEN_KHACHHANG\r\nFROM HOADON HD\r\nINNER JOIN NHANVIEN NV ON HD.MANV = NV.MANV\r\nINNER JOIN KHACHHANG KH ON HD.MAKH = KH.MAKH\r\nINNER JOIN THONGTIN NV_THONGTIN ON NV.MATT = NV_THONGTIN.MATT\r\nINNER JOIN THONGTIN KH_THONGTIN ON KH.MATT = KH_THONGTIN.MATT;";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();

            InvoiceList.DataSource = data;


        }
        void AddInvoiceBinding()
        {
            tb_mahd.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "MAHD"));
            tb_manv.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "MANV"));
            tb_tennv.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "HOTEN_NHANVIEN"));
            tb_makh.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "MAKH"));
            tb_tenkh.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "HOTEN_KHACHHANG"));
            tb_nglaphd.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "NGLAPHD"));
            tb_ngtra.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "NGTRAG"));
            tb_tongtien.DataBindings.Add(new Binding("Text", InvoiceList.DataSource, "TONGTIEN"));
        }
    }

}
