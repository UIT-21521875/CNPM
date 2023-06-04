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
    public partial class StaffManagement : Form
    {
        public StaffManagement()
        {
            InitializeComponent();

            loadStaffList();
        }
        void loadStaffList()
        {
            

          
            string query = "select * from NHANVIEN";



            staffList.DataSource = DataProvider.Instance.ExecuteQuery(query);
        }

        private void btn_timkiem_Click(object sender, EventArgs e)
        {

        }

        private void StaffManager_Load(object sender, EventArgs e)
        {

        }

        private void btn_xoasanpham_Click(object sender, EventArgs e)
        {

        }

        private void tb_timkiem_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn_xoasanpham_Click_1(object sender, EventArgs e)
        {

        }

        private void btn_themnhanvien_Click(object sender, EventArgs e)
        {
            AddStaffInfor i = new AddStaffInfor();
            i.ShowDialog();
        }

        private void btn_xemthongtin_Click(object sender, EventArgs e)
        {
            StaffInfor s = new StaffInfor();
            s.ShowDialog();
        }
    }
}
