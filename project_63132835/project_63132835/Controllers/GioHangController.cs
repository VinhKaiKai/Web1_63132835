using project_63132835.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace project_63132835.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();

        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                // nếu giỏ hàng ko tồn tại thì tiến hành khởi tạo list giỏ hàng 
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }
        // Thêm giỏ hàng 
        public ActionResult ThemGioHang(int iMaSach, string strURL)
        {
            Sach sach = db.Saches.SingleOrDefault(n=>n.MaSach==iMaSach);
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Lấy ra session giỏ hàng 
            List<GioHang> lstGioHang = LayGioHang();
            // kiểm tra sách này đã tồn tại trong sesion[gio hang] chưa
            GioHang sanpham = lstGioHang.Find(n=>n.iMaSach == iMaSach);
            if (sanpham == null)
            {
                sanpham = new GioHang(iMaSach);
                // add san pham moi them vao list
                lstGioHang.Add(sanpham);
                return Redirect(strURL);
            }
            else
            {
                sanpham.iSoLuong++;
                return Redirect(strURL);
            }
        }
        // cập nhật giỏ hàng 
        public ActionResult CapNhatGioHang(int iMaSP, FormCollection f)
        {
            //kiểm tra masp
            Sach sach = db.Saches.SingleOrDefault(n => n.MaSach == iMaSP);
            //nếu get sai ma sp thì trả về lỗi
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // lấy giỏ hàng ra từ sesion 
            List<GioHang> lstGioHang = LayGioHang();
            // kiểm tra sản phẩm có tồn tại trong sesion [gio hang]
            GioHang sanpham = lstGioHang.SingleOrDefault(n => n.iMaSach == iMaSP);
            // nếu tồn tại thì chúng ta cho sửa số lượng 
            if (sanpham != null)
            {
                sanpham.iSoLuong = int.Parse(f["txtSoLuong"].ToString());

            }
            return View("GioHang");

        }
        // xóa giỏ hàng 
        public ActionResult XoaGioHang(int iMaSP)
        {
            //kiểm tra masp
            Sach sach = db.Saches.SingleOrDefault(n => n.MaSach == iMaSP);
            //nếu get sai ma sp thì trả về lỗi
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // lấy giỏ hàng ra từ sesion 
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sanpham = lstGioHang.SingleOrDefault(n => n.iMaSach == iMaSP);
            // nếu tồn tại thì chúng ta cho sửa số lượng 
            if (sanpham != null)
            {
                lstGioHang.RemoveAll(n => n.iMaSach == iMaSP);
            }
            if (lstGioHang.Count == 0)
            {
                return RedirectToAction("Index", "Home_63132835");//
            }
            return RedirectToAction("GioHang");//
        }
        // Xây dựng trang giỏ hàng 
        public ActionResult GioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home_63132835");
            }
            List<GioHang> lstGioHang = LayGioHang();
            return View(lstGioHang);
        }

        // Tinh so luong va tong tien
        private int TongSoLuong()
        {
            int iTongSoLuong = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                iTongSoLuong = lstGioHang.Sum(n => n.iSoLuong);
            }
            return iTongSoLuong;
        }
        // Tính tổng thành tiền 
        private double TongTien()
        {
            double dTongTien = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                dTongTien = lstGioHang.Sum(n => n.ThanhTien);
            }
            return dTongTien;
        }
    }
}