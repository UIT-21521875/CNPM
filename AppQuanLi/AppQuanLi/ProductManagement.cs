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
    public partial class ProductManagement : Form
    {
        public ProductManagement()
        {
            InitializeComponent();
            loadProductList();
            AddProductBinding();
        }
        void loadProductList()
        {
            string connectionSTR = "Data Source=LAPTOP-98F0GEC3;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "SELECT SP.*, TL.TENTL, TT.TRANGTHAI\r\nFROM SANPHAM SP\r\nJOIN KHO K ON SP.MASP = K.MASP\r\nJOIN THELOAI TL ON SP.MATL = TL.MATL\r\nJOIN TINHTRANGSP TT ON K.MATTSP = TT.MATTSP;";

             connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();

            ProductList.DataSource = data;
            

        }
        void AddProductBinding()
        {
            tb_tensp.DataBindings.Add(new Binding("Text", ProductList.DataSource, "TENSP"));
            tb_masp.DataBindings.Add(new Binding("Text", ProductList.DataSource, "MASP"));
            tb_nhaphathanh.DataBindings.Add(new Binding("Text", ProductList.DataSource, "NHAPH"));
            tb_ngayphathanh.DataBindings.Add(new Binding("Text", ProductList.DataSource, "NGPH"));
            tb_tinhtrang.DataBindings.Add(new Binding("Text", ProductList.DataSource, "TRANGTHAI"));
            tb_theloai.DataBindings.Add(new Binding("Text", ProductList.DataSource, "TENTL"));
            tb_giathue.DataBindings.Add(new Binding("Text", ProductList.DataSource, "GIATHUE"));
        }
    }
}