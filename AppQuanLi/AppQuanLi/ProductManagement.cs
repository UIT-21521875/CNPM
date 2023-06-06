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
    public partial class ProductManagement : Form
    {
        public ProductManagement()
        {
            InitializeComponent();
            loadProductList();
        }
        void loadProductList()
        {

            string query = "SELECT MASP as [ Mã sản phẩm ], TENSP as [Tên sản phẩm ], NENTANG as [Nền tàng], GIATHUE as [Giá thuê]  FROM SANPHAM";


           

            ProductList.DataSource= DataProvider.Instance.ExecuteQuery(query);
        }

        private void ProductManager_Load(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        private void btn_xoasanpham_Click(object sender, EventArgs e)
        {

        }

        private void btn_timkiem_Click(object sender, EventArgs e)
        {

        }

        private void tb_timkiem_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn_xemthongtin_Click(object sender, EventArgs e)
        {
            ProductInformation p = new ProductInformation();
            p.ShowDialog();
        }

        private void btn_themsanpham_Click(object sender, EventArgs e)
        {
            AddProductInfor i = new AddProductInfor();
            i.ShowDialog();
        }

        private void tb_ngayphathanh_TextChanged(object sender, EventArgs e)
        {

        }
    }
}