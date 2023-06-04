using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppQuanLi
{
    public partial class VideoGame : Form
    {
        
        public VideoGame()
        {
            InitializeComponent();
        }
        private void showForm (object Form)
        {
            if (this.pn_show.Controls.Count > 0)
            {
                this.pn_show.Controls.RemoveAt(0);
            }
            Form form = (Form)Form;
            form.FormBorderStyle= FormBorderStyle.None;
            form.TopLevel = false;
            form.Dock = DockStyle.Fill;
            this.pn_show.Controls.Add(form);
            form.Show();
        }
        private void Menu_Click(object sender, EventArgs e)
        {
            if (pn_button.Visible == true)
            {
                pn_button.Visible = false;
                pb_menu.Visible = false;
                pn_icon.Visible = true;
            }
            else
            {
                pn_icon.Visible = false;
                pn_button.Visible= true;
                pb_menu.Visible= true;
            }
        }

        private void btn_staff_Click(object sender, EventArgs e)
        {
            showForm (new StaffManagement());
        }

        private void btn_customer_Click(object sender, EventArgs e)
        {
            showForm(new CustomerManagement());
        }

        private void btn_productt_Click(object sender, EventArgs e)
        {
            showForm(new ProductManagement());
        }

        private void btn_gara_Click(object sender, EventArgs e)
        {

        }

        private void btn_sell_Click(object sender, EventArgs e)
        {

        }

        private void btn_voucher_Click(object sender, EventArgs e)
        {

        }

        private void btn_point_Click(object sender, EventArgs e)
        {

        }

        private void btn_target_Click(object sender, EventArgs e)
        {

        }

        private void btn_care_Click(object sender, EventArgs e)
        {

        }

        private void btn_account_Click(object sender, EventArgs e)
        {
            showForm(new Account());            
        }
       
        private void pn_show_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button9_Click(object sender, EventArgs e)
        {

        }
    }
}