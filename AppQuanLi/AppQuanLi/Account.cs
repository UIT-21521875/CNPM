using AppQuanLi.DAO;
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
    public partial class Account : Form
    {

        public Account()
        {
            InitializeComponent();
            loadaccountList();
        }
        void loadaccountList()
        {

            string query = "EXEC dbo.USP_GetAccountByUserName @userName";

         

            AccountList.DataSource = DataProvider.Instance.ExecuteQuery(query);
        }
        VideoGame v;
        private void btn_logout_Click(object sender, EventArgs e)
        {
            
            
        }

        private void AccountList_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
