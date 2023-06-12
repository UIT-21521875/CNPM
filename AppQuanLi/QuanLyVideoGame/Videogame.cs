using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyVideoGame
{
    public partial class Videogamecs : Form
    {
        public Videogamecs()
        {
            InitializeComponent();
        }

        private void Videogamecs_Load(object sender, EventArgs e)
        {
            Class.Funtion.Connect();
        }

        private void btn_staff_Click(object sender, EventArgs e)
        {
            staff1.Visible = true;
            customer1.Visible = false;
            product1.Visible = false;
            storage1.Visible = false;
            voucher1.Visible = false;
            report1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;
        }

        private void btn_customer_Click(object sender, EventArgs e)
        {
            customer1.Visible = true;
            product1.Visible = false;
            staff1.Visible = false;
            storage1.Visible = false;
            voucher1.Visible = false;
            report1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;
        }

        private void btn_productt_Click(object sender, EventArgs e)
        {
            product1.Visible = true;
            customer1.Visible = false;
            staff1.Visible = false;
            storage1.Visible = false;
            voucher1.Visible = false;
            report1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;

        }

        private void btn_gara_Click(object sender, EventArgs e)
        {
            storage1.Visible = true;
            product1.Visible = false;
            customer1.Visible = false;
            staff1.Visible = false;
            voucher1.Visible = false;
            report1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;
        }

        private void btn_voucher_Click(object sender, EventArgs e)
        {
            voucher1.Visible = true;
            storage1.Visible = false;
            product1.Visible = false;
            customer1.Visible = false;
            staff1.Visible = false;
            report1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;
        }

        private void btn_target_Click(object sender, EventArgs e)
        {
            report1.Visible = true;
            voucher1.Visible = false;
            storage1.Visible = false;
            product1.Visible = false;
            customer1.Visible = false;
            staff1.Visible = false;
            care1.Visible = false;
            invoice1.Visible = false;
        }

        private void btn_care_Click(object sender, EventArgs e)
        {
            care1.Visible = true;
            report1.Visible = false;
            voucher1.Visible = false;
            storage1.Visible = false;
            product1.Visible = false;
            customer1.Visible = false;
            staff1.Visible = false;
            invoice1.Visible = false;

        }

        private void btn_sell_Click(object sender, EventArgs e)
        {
            invoice1.Visible = true;
            care1.Visible = false;
            report1.Visible = false;
            voucher1.Visible = false;
            storage1.Visible = false;
            product1.Visible = false;
            customer1.Visible = false;
            staff1.Visible = false;
        }
    }
}
