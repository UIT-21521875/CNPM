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
    public partial class Login : Form
    {
        private object tb_TK;

        public Login()
        {
            InitializeComponent();
        }
        private void lb_login_Click(object sender, EventArgs e)
        {
            string userName = tb_tk.Text;
            string passWord = tb_MK.Text;
            if (fLogin(userName, passWord))
            {
              VideoGame v = new VideoGame();
                this.Hide();
                v.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Sai tên tài khoản hoặc mật khẩu!");
            }
        }

        bool fLogin(string userName, string passWord)
        {
            return AccountDAO.Instance.Login(userName, passWord);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void fLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn có thật sự muốn thoát chương trình?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }
    }
    /*
    TableManager f  = new TableManager();
    this.Hide();
    f.ShowDialog();
    this.Show();
    */
}
    

