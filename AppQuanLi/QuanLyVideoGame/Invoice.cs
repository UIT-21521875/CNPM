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
using QuanLyVideoGame.Class;


namespace QuanLyVideoGame
{
    public partial class Invoice : UserControl
    {
        DataTable tblCTHDB;
        public Invoice()
        {
            InitializeComponent();
        }

        private void Invoice_Load(object sender, EventArgs e)
        {
            btn_them.Enabled = true;
            btn_luu.Visible = false;
            btn_huy.Visible = false;

            //btnInHoaDon.Enabled = false;
            tb_mahd.ReadOnly = true;
            tb_tennv.ReadOnly = true;
            tb_tenkh.ReadOnly = true;


            tb_tensp.ReadOnly = true;
            tb_giathue.ReadOnly = true;

            tb_tongtien.ReadOnly = true;
            tb_tongtien.Text = "0";
            Funtion.FillCombo("SELECT MAKH, HOTEN FROM KHACHHANG", cb_makh, "MAKH", "TENKH");
            cb_makh.SelectedIndex = -1;
            Funtion.FillCombo("SELECT MANV, HOTEN FROM NHANVIEN", cb_manv, "MANV", "TENNV");
            cb_manv.SelectedIndex = -1;
            Funtion.FillCombo("SELECT MASP,TENSP FROM SANPHAM", cb_masp, "MASP", "MASP");
            cb_masp.SelectedIndex = -1;
            Funtion.FillCombo("SELECT MACTUD FROM CTUUDAI", cb_mauudai, "MACTUD", "MACTUD");
            cb_mauudai.SelectedIndex = -1;
            //Hiển thị thông tin của một hóa đơn được gọi từ form tìm kiếm

            LoadDataGridView();
        }
        private void LoadDataGridView()
        {
            string sql;
            sql = "select * from HOADON";
            //sql = "select HOADON.MAHD, MANV, MAKH, MACTUD, NGLAPHD, NGTRAG,SANPHAM.MASP, COUNT, TONGTIEN\r\nfrom HOADON join CHITIETHD on HOADON.MAHD=CHITIETHD.MAHD\r\n\t\tjoin SANPHAM on CHITIETHD.MASP=SANPHAM.MASP";
            tblCTHDB = Funtion.GetDataToTable(sql);
            InvoiceList.DataSource = tblCTHDB;
            InvoiceList.Columns[0].HeaderText = "Mã hóa đơn";
            InvoiceList.Columns[1].HeaderText = "Mã nhân viên";
            InvoiceList.Columns[2].HeaderText = "Mã khách hàng";
            InvoiceList.Columns[3].HeaderText = "Mã chương trình ưu đãi";
            InvoiceList.Columns[4].HeaderText = "Ngày lập hóa đơn";
            InvoiceList.Columns[5].HeaderText = "Ngày trả";
            //InvoiceList.Columns[6].HeaderText =  "Mã sản phẩm";
            //InvoiceList.Columns[7].HeaderText = "Số lượng";
            InvoiceList.Columns[6].HeaderText =  "Tổng tiền";
            InvoiceList.AllowUserToAddRows = false;
            InvoiceList.EditMode = DataGridViewEditMode.EditProgrammatically;
        }


        private void LoadInfoHoaDon()
        {
            string str;
            str = "SELECT MAHD FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            tb_mahd.Text = Funtion.GetFieldValues(str);
            str = "SELECT NGLAPHD FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            dtm_ngayhd.Text = Funtion.GetFieldValues(str);
            //str = "SELECT NGTRA FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            //dt_ngaytra.Text = Funtion.GetFieldValues(str);
            str = "SELECT MANV FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            cb_manv.SelectedValue = Funtion.GetFieldValues(str);
            str = "SELECT MAKH FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            cb_makh.SelectedValue = Funtion.GetFieldValues(str);
            //str = "select SANPHAM.MASP\r\nfrom HOADON join CHITIETHD on HOADON.MAHD=CHITIETHD.MAHD\r\n\t\tjoin SANPHAM on CHITIETHD.MASP=SANPHAM.MASP WHERE MAHD = N'" + tb_mahd.Text + "'";
            //cb_masp.SelectedValue = Funtion.GetFieldValues(str);
            str = "SELECT TongTien FROM HOADON WHERE MAHD = N'" + tb_mahd.Text + "'";
            tb_tongtien.Text = Funtion.GetFieldValues(str);
        }

        

        private void ResetValues()
        {
            tb_mahd.Text = "";
            dtm_ngayhd.Text = DateTime.Now.ToShortDateString();
            cb_manv.Text = "";
            cb_makh.Text = "";
            tb_tongtien.Text = "0";
            tb_tennv.Text = "";
            tb_mahd.Text = "";
            tb_tenkh.Text = "";
            cb_masp.Text = "";
            tb_tensp.Text = "";
            tb_giathue.Text = "";
            tb_soluong.Text = "";
            cb_mauudai.Text = "";

        }
        
        private void ResetValuesHang()
        {
            cb_masp.Text = "";
            tb_soluong.Text = "";
            cb_mauudai.Text = "";
            tb_tongtien.Text = "0";
        }
        private void btn_them_Click(object sender, EventArgs e)
        {
            btn_huy.Visible = true;
            btn_huy.Enabled = true;
            btn_luu.Enabled = true;
            btn_luu.Visible = true;
            //btnInHoaDon.Enabled = false;
            btn_them.Visible = false;
            btn_sua.Visible = false;
            tb_mahd.Enabled = false;


            tb_soluong.Enabled = true;
            tb_soluong.ReadOnly = false;
            ResetValues();
            LoadDataGridView();
        }

        private void btn_timkiem_Click(object sender, EventArgs e)
        {
             if (cb_mahd.Text == "")
            {
                MessageBox.Show("Bạn phải chọn một mã hóa đơn để tìm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cb_mahd.Focus();
                return;
            }
            tb_mahd.Text = cb_mahd.Text;
            LoadInfoHoaDon();
            LoadDataGridView();
            btn_huy.Visible = true;
            //btnLuu.Enabled = true;
            //btnInHoaDon.Enabled = true;
            cb_mahd.SelectedIndex = -1;
        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            string sql;
            double sl, SLcon, tong, Tongmoi;
            sql = "SELECT MAHD FROM HOADON WHERE MAHD=N'" + tb_mahd.Text + "'";
            if (!Funtion.CheckKey(sql))
            {
                if (cb_manv.Text.Length == 0)
                {
                    MessageBox.Show("Bạn phải nhập nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    cb_manv.Focus();
                    return;
                }
                if (cb_makh.Text.Length == 0)
                {
                    MessageBox.Show("Bạn phải nhập khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    cb_makh.Focus();
                    return;
                }

                sql = "INSERT INTO HOADON (NGLAPHD, MANV, MAKH, TONGTIEN, NGTRAG) VALUES ('" + dtm_ngayhd.Value + "',N'" + cb_manv.SelectedValue + "',N'" + cb_makh.SelectedValue + "','" + tb_tongtien.Text + "','" + dt_ngaytra.Value + "')";
                Funtion.RunSQL(sql);
            }
            // Lưu thông tin của các mặt hàng
            if (cb_masp.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập mã hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cb_masp.Focus();
                return;
            }
             sql = "SELECT MASP FROM SANPHAM WHERE MASP=N'" + cb_masp.SelectedValue + "' AND MAHD = N'" + tb_mahd.Text.Trim() + "'";
            // Kiểm tra xem số lượng hàng trong kho còn đủ để cung cấp không?
            sl = Convert.ToDouble(Funtion.GetFieldValues("SELECT SOLUONG FROM CHITIETHD WHERE MAHD = N'" + cb_masp.SelectedValue + "'"));
            if (Convert.ToDouble(tb_soluong.Text) > sl)
            {
                MessageBox.Show("Số lượng mặt hàng này chỉ còn " + sl, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_soluong.Text = "";
                tb_soluong.Focus();
                return;
            }
            sql = "INSERT INTO CHITIETHD (MAHD,MASP,COUNT,MACTUD,MANV,MAKH,TONGTIEN, NGTRAG, NGLAPHD) VALUES(N'" + cb_mahd.SelectedValue + "',N'" + cb_masp.SelectedValue + "'," + tb_soluong.Text + "," + cb_mauudai.SelectedValue + ","+cb_manv.SelectedValue +","+cb_makh.SelectedValue+","+ tb_tongtien.Text + ","+dt_ngaytra.Value+","+dtm_ngayhd.Value+")";
            Funtion.RunSQL(sql);
            LoadDataGridView();
            // Cập nhật lại số lượng của mặt hàng vào bảng tblHang
            SLcon = sl - Convert.ToDouble(tb_soluong.Text);
            sql = "UPDATE CHITIETHD SET SoLuong =" + SLcon + " WHERE MaHang= N'" + cb_masp.SelectedValue + "'";
            Funtion.RunSQL(sql);
            // Cập nhật lại tổng tiền cho hóa đơn bán
            tong = Convert.ToDouble(Funtion.GetFieldValues("SELECT TongTien FROM tblHDBan WHERE MaHDBan = N'" + tb_mahd.Text + "'"));
            Tongmoi = tong + Convert.ToDouble(tb_tongtien.Text);
            sql = "UPDATE HOADON SET TONGTIEN =" + Tongmoi + " WHERE MAHD = N'" + tb_mahd.Text + "'";
            Funtion.RunSQL(sql);
            tb_tongtien.Text = Tongmoi.ToString();

            ResetValuesHang();
            btn_sua.Visible = true;
            btn_them.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;
            //btnInHoaDon.Enabled = true;
        }

        private void cb_makh_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str;
            if (cb_makh.Text == "")

                tb_tenkh.Text = "";

            //Khi chọn Mã khách hàng thì các thông tin của khách hàng sẽ hiện ra
            str = "Select KHACHHANG.HOTEN from KHACHHANG where MAKH = N'" + cb_makh.SelectedValue + "'";
            tb_tenkh.Text = Funtion.GetFieldValues(str);
        }

        private void cb_manv_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            string str;
            if (cb_manv.Text == "")
                tb_tennv.Text = "";
            // Khi chọn Mã nhân viên thì tên nhân viên tự động hiện ra
            str = "Select HOTEN from NHANVIEN where MANV =N'" + cb_manv.SelectedValue + "'";
            tb_tennv.Text = Funtion.GetFieldValues(str);
        }

        private void cb_masp_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            string str;
            if (cb_masp.Text == "")
            {
                tb_tensp.Text = "";
                tb_giathue.Text = "";
            }
            // Khi chọn mã hàng thì các thông tin về hàng hiện ra
            str = "SELECT TENSP FROM SANPHAM WHERE MASP =N'" + cb_masp.SelectedValue + "'";
            tb_tensp.Text = Funtion.GetFieldValues(str);
            str = "SELECT GIATHUE FROM SANPHAM WHERE MASP =N'" + cb_masp.SelectedValue + "'";
            tb_giathue.Text = Funtion.GetFieldValues(str);

        }

       

        private void btn_huy_Click(object sender, EventArgs e)
        {
            ResetValuesHang();
            ResetValues();
            btn_sua.Visible = true;
            btn_them.Visible = true;
            btn_huy.Visible = false;
            btn_luu.Visible = false;
        }

        private void cb_mauudai_SelectedIndexChanged(object sender, EventArgs e)
        {
            double tt, sl, dg, gg = 0;
            int day;
            if (tb_soluong.Text == "")
                sl = 0;
            else
                sl = Convert.ToDouble(tb_soluong.Text);
            switch (cb_mahd.Text)
            {
                case "":
                    gg = 1;
                    break;
                case "CTUD0001":
                    gg = 5;
                    break;
                //...
                case "CTUD0002":
                    gg = 10;
                    break;
                case "CTUD0003":
                    gg = 15;
                    break;
                case "CTUD0004":
                    gg = 20;
                    break;
                case "CTUD0005":
                    gg = 25;
                    break;
            }
            DateTime startDate = dtm_ngayhd.Value;
            DateTime endDate = dt_ngaytra.Value;

            day = Class.Funtion.CalculateNumberOfDays(startDate, endDate);

            if (tb_giathue.Text == "")
                dg = 0;
            else
                dg = Convert.ToDouble(tb_giathue.Text);
            tt = sl * dg * day - sl * dg * gg  / 100;
            tb_tongtien.Text = tt.ToString();
        }

        private void tb_soluong_TextChanged(object sender, EventArgs e)
        {
            double tt, sl, dg, gg = 0;
            int day;
            if (tb_soluong.Text == "")
                sl = 0;
            else
                sl = Convert.ToDouble(tb_soluong.Text);
            switch (cb_mahd.Text)
            {
                case "":
                    gg = 1;
                    break;
                case "CTUD0001":
                    gg = 5;
                    break;
                //...
                case "CTUD0002":
                    gg = 10;
                    break;
                case "CTUD0003":
                    gg = 15;
                    break;
                case "CTUD0004":
                    gg = 20;
                    break;
                case "CTUD0005":
                    gg = 25;
                    break;

            }
            switch (cb_mahd.Text)
            {
                case "":
                    gg = 1;
                    break;
                case "CTUD0001":
                    gg = 5;
                    break;
                //...
                case "CTUD0002":
                    gg = 10;
                    break;
                case "CTUD0003":
                    gg = 15;
                    break;
                case "CTUD0004":
                    gg = 20;
                    break;
                case "CTUD0005":
                    gg = 25;
                    break;
            }
            DateTime startDate = dtm_ngayhd.Value;
            DateTime endDate = dt_ngaytra.Value;

            day = Class.Funtion.CalculateNumberOfDays(startDate, endDate);

            if (tb_giathue.Text == "")
                dg = 0;
            else
                dg = Convert.ToDouble(tb_giathue.Text);
            tt = sl * dg * day - sl * dg * gg  / 100;
            tb_tongtien.Text = tt.ToString();
        }

        private void cb_mahd_DropDown(object sender, EventArgs e)
        {
            Funtion.FillCombo("SELECT MAHD FROM HOADON", cb_mahd, "MAHD", "MAHD");
            cb_mahd.SelectedIndex = -1;
        }

        private void InvoiceList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < InvoiceList.Rows.Count)
            {
                DataGridViewRow row = InvoiceList.Rows[e.RowIndex];

                // Lấy dữ liệu từ DataGridView và gán vào các TextBox hoặc ô tương ứng
                tb_mahd.Text = row.Cells["MAHD"].Value.ToString();
                dtm_ngayhd.Text = row.Cells["NGLAPHD"].Value.ToString();
                //dt_ngaytra.Text = row.Cells["NGTRAG"].Value.ToString();
                cb_manv.SelectedValue = row.Cells["MANV"].Value.ToString();
                cb_makh.SelectedValue = row.Cells["MAKH"].Value.ToString();
                tb_tongtien.Text = row.Cells["TONGTIEN"].Value.ToString();
                //cb_masp.SelectedValue = row.Cells["MASP"].Value.ToString();
                //tb_soluong.Text = row.Cells["COUNT"].Value.ToString();
                // Tiếp tục gán dữ liệu cho các TextBox hoặc ô tương ứng khác
                // ...


                LoadInfoHoaDon();
            }
        }
    }
}