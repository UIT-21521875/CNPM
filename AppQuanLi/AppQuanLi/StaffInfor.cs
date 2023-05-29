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
    public partial class StaffInfor : Form
    {
        public StaffInfor()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
                
        }

        private void btn_edit_Click(object sender, EventArgs e)
        {
            
        }

        private void btn_edit_Click_1(object sender, EventArgs e)
        {
            EditStaffInfor g = new EditStaffInfor();
            g.ShowDialog();
        }
    }
}
