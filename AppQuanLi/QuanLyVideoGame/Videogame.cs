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
            
        }

        private void btn_customer_Click(object sender, EventArgs e)
        {
            customer1.Visible = true;
            product1.Visible = false;
        }

        private void btn_productt_Click(object sender, EventArgs e)
        {
            product1.Visible = true;
            customer1.Visible = false;

        }
    }
}
