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
    public partial class product : UserControl
    {
        DataTable tblCL;
        private readonly object btn_them;
        public product()
        {
            InitializeComponent();
        }

        private void Product_Load(object sender, EventArgs e)
        {
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            loadDataGRV();
        }

        private void loadDataGRV()
        {
            string sql;
            sql = "SELECT SP.MASP, SP.TENSP, SP.NHAPH, SP.NGPH, SP.NENTANG, SP.GIATHUE, TL.TENTL, TT.TRANGTHAI FROM SANPHAM SP INNER JOIN THELOAI TL ON SP.MATL = TL.MATL INNER JOIN TINHTRANGSP TT ON SP.MATTSP = TT.MATTSP;";
            tblCL = Class.Funtion.GetDataToTable(sql); //Đọc dữ liệu từ bảng
            ProductList.DataSource = tblCL; //Nguồn dữ liệu            
            ProductList.Columns[0].HeaderText = "Mã sản phẩm";
            ProductList.Columns[1].HeaderText = "Tên sản phẩm";
            ProductList.Columns[2].HeaderText = "Nhà phát hành";
            ProductList.Columns[3].HeaderText = "Ngày phát hành";
            ProductList.Columns[4].HeaderText = "Nền tảng";
            ProductList.Columns[5].HeaderText = "Giá thuê";
            ProductList.Columns[6].HeaderText = "Thể loại";
            ProductList.Columns[7].HeaderText = "Trạng thái";


            ProductList.AllowUserToAddRows = false; //Không cho người dùng thêm dữ liệu trực tiếp
            ProductList.EditMode = DataGridViewEditMode.EditProgrammatically; //Không cho sửa dữ liệu trực tiếp


            tb_masp.Enabled = false;
            tb_tensp.Enabled = false;
            mbk_ngph.Enabled = false;
            tb_nhaphathanh.Enabled = false;
            tb_theloai.Enabled = false;
            tb_tinhtrang.Enabled = false;
            tb_giathue.Enabled = false;
            tb_nentang.Enabled = false;


        }

        private void ProductList_Click(object sender, EventArgs e)
        {
            if (btn_themsanpham.Enabled == false)
            {
                MessageBox.Show("Đang ở chế độ thêm mới!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tensp.Focus();
                return;
            }
            if (tblCL.Rows.Count == 0) //Nếu không có dữ liệu
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            tb_masp.Text = ProductList.CurrentRow.Cells["MASP"].Value.ToString();
            tb_tensp.Text = ProductList.CurrentRow.Cells["TENSP"].Value.ToString();
            tb_nhaphathanh.Text = ProductList.CurrentRow.Cells["NHAPH"].Value.ToString();
            mbk_ngph.Text = ProductList.CurrentRow.Cells["NGPH"].Value.ToString();
            tb_theloai.Text = ProductList.CurrentRow.Cells["TENTL"].Value.ToString();
            tb_tinhtrang.Text = ProductList.CurrentRow.Cells["TRANGTHAI"].Value.ToString();
            tb_giathue.Text = ProductList.CurrentRow.Cells["GIATHUE"].Value.ToString();
            tb_nentang.Text = ProductList.CurrentRow.Cells["NENTANG"].Value.ToString();
            btn_chinhsua.Enabled = true;
            btn_themsanpham.Enabled = true;
        }

        private void btn_themsanpham_Click(object sender, EventArgs e)
        {
            lb_masp.Visible = false;
            tb_masp.Visible = false;
            lb_theloai.Visible = false;
            tb_theloai.Visible = false;
            lb_tinhtrang.Visible = false;
            tb_tinhtrang.Visible = false;

            tb_tensp.Enabled = true;
            mbk_ngph.Enabled = true; ;
            tb_nhaphathanh.Enabled = true;
            tb_giathue.Enabled = true;
            tb_nentang.Enabled = true;
            tb_matl.Enabled = true;
            tb_matt.Enabled = true;




            btn_chinhsua.Visible = false;
            btn_themsanpham.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_luu.Visible = true;
            btn_luu.Enabled = true;
            ResetValue(); //Xoá trắng các textbox
            tb_tensp.Focus();
        }

        private void ResetValue()
        {
            tb_tensp.Text = "";
            tb_nhaphathanh.Text = "";
            mbk_ngph.Text = "";
            tb_giathue.Text = "";
            tb_nentang.Text = "";
            tb_matl.Text = "";
            tb_matt.Text = "";

        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql; //Lưu lệnh sql

            if (tb_tensp.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập tên sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tensp.Focus();
                return;
            }
            if (tb_nhaphathanh.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập nhà phát hành", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_nhaphathanh.Focus();
                return;
            }
            if (mbk_ngph.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập ngày phát hành ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                mbk_ngph.Focus();
                return;
            }
            if (tb_giathue.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập giá thue", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_giathue.Focus();
                return;
            }
            if (tb_nentang.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập nền tảng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_nentang.Focus();
                return;
            }
            if (tb_matl.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã thể loại ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_matl.Focus();
                return;
            }
            if (tb_matt.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã tình trạng sản phẩm ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_matt.Focus();
                return;
            }




            sql = "INSERT INTO SANPHAM (TENSP, NHAPH, NGPH, NENTANG, GIATHUE, MATL, MATTSP) VALUES(N'" + tb_tensp.Text + "', N'" + tb_nhaphathanh.Text + "', N'" + mbk_ngph.Text + "', N'" + tb_nentang.Text + "', N'" + tb_giathue.Text + "', N'" + tb_matl.Text + "', N'" + tb_matt.Text + "' );";
            Class.Funtion.RunSQL(sql); //Thực hiện câu lệnh sql
            loadDataGRV(); //Nạp lại DataGridView
            ResetValue();
            btn_themsanpham.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;

            lb_masp.Visible = true;
            tb_masp.Visible = true;
            lb_theloai.Visible = true;
            tb_theloai.Visible = true;
            lb_tinhtrang.Visible = true;
            tb_tinhtrang.Visible = true;
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValue();
            btn_huy.Visible = false;
            btn_themsanpham.Visible = true;
            btn_chinhsua.Visible = true;
            btn_luu.Visible = false;
            btn_sua.Visible = false;

            lb_masp.Visible = true;
            tb_masp.Visible = true;
            lb_theloai.Visible = true;
            tb_theloai.Visible = true;
            lb_tinhtrang.Visible = true;
            tb_tinhtrang.Visible = true;

        }

        private void btn_chinhsua_Click(object sender, EventArgs e)
        {
            lb_masp.Visible = false;
            tb_masp.Visible = false;
            lb_theloai.Visible = false;
            tb_theloai.Visible = false;
            lb_tinhtrang.Visible = false;
            tb_tinhtrang.Visible = false;



            tb_tensp.Enabled = true;
            mbk_ngph.Enabled = true; ;
            tb_nhaphathanh.Enabled = true;
            tb_giathue.Enabled = true;
            tb_nentang.Enabled = true;
            tb_matl.Enabled = true;
            tb_matt.Enabled = true;

            btn_chinhsua.Visible = false;
            btn_themsanpham.Visible = false;
            btn_luu.Visible = false;

            btn_huy.Visible = true;
            btn_huy.Enabled = true;

            btn_sua.Visible = true;
            btn_sua.Enabled = true;
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            string sql; //Lưu câu lệnh sql
            if (tblCL.Rows.Count == 0)
            {
                MessageBox.Show("Không còn dữ liệu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_masp.Text == "") //nếu chưa chọn bản ghi nào
            {
                MessageBox.Show("Bạn chưa chọn bản ghi nào", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_tensp.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập tên sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (mbk_ngph.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập ngày phát hành ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_nhaphathanh.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập nhà phát hành", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_nentang.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập nền tảng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_giathue.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập giá thuê", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_matl.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập mã thế loại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (tb_matt.Text.Trim().Length == 0) //nếu chưa nhập tên chất liệu
            {
                MessageBox.Show("Bạn chưa nhập mã tình trạng sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            sql = "UPDATE SANPHAM SET TENSP=N'" + tb_tensp.Text.ToString() + "',NHAPH=N'" + tb_nhaphathanh.Text.ToString() + "',NGPH=N'" + mbk_ngph.Text.ToString() + "',NENTANG=N'" + tb_nentang.Text.ToString() + "',GIATHUE=N'" + tb_giathue.Text.ToString() + "',MATL=N'" + tb_matl.Text.ToString() + "',MATTSP=N'" + tb_matt.Text.ToString() + "' WHERE MASP=N'" + tb_masp.Text + "'";
            Class.Funtion.RunSQL(sql);
            loadDataGRV();
            ResetValue();

            btn_themsanpham.Visible = true;
            btn_chinhsua.Visible = true;
            btn_huy.Visible = false;
            btn_sua.Visible = false;

            lb_masp.Visible = true;
            tb_masp.Visible = true;
            lb_theloai.Visible = true;
            tb_theloai.Visible = true;
            lb_tinhtrang.Visible = true;
            tb_tinhtrang.Visible = true;
        }
    }

}
