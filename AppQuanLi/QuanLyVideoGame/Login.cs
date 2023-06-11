using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyVideoGame
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void lb_login_Click(object sender, EventArgs e)
        {
            if (tb_tk.Text.Trim() == "123" & tb_MK.Text.Trim() == "123")
            {
                Videogamecs v = new Videogamecs();
                this.Hide();
                v.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Thông tin sai");
            }
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
