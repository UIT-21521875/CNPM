﻿using System;
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
    public partial class StaffManager : Form
    {
        public StaffManager()
        {
            InitializeComponent();

            loadStaffList();
        }
        void loadStaffList()
        {
            string connectionSTR = "Data Source=MSI;Initial Catalog=CNPM;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionSTR);
            string query = "select * from NHANVIEN";

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            DataTable data = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            adapter.Fill(data);

            connection.Close();
            
            staffList.DataSource = data;
        }

        private void btn_timkiem_Click(object sender, EventArgs e)
        {

        }

        private void btn_xemthongtin_Click(object sender, EventArgs e)
        {
             StaffInfor s = new StaffInfor();
            s.ShowDialog();
        }

        private void StaffManager_Load(object sender, EventArgs e)
        {

        }

        private void btn_xoasanpham_Click(object sender, EventArgs e)
        {

        }

        private void btn_themnhanvien_Click(object sender, EventArgs e)
        {
            InsertStaffInfor i = new InsertStaffInfor();
            i.ShowDialog();
        }

        

        private void tb_timkiem_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
