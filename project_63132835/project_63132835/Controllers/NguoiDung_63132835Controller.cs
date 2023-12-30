using project_63132835.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace project_63132835.Controllers
{
    public class NguoiDung_63132835Controller : Controller
    {
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        // GET: NguoiDung_63132835
        public ActionResult Index()
        {
            return View();
        }

        // phuong thuc load lai
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy(FormCollection f)
        {
           
            string sTaiKhoan = f["txtTaiKhoan"].ToString().Trim();
            string sMatKhau = f["txtMatKhau"].ToString().Trim();
            string sHoVaTen = f["txtHoVaTen"].ToString().Trim();
            string sNhapLaiMatKhau = f["txtNhapLaiMatKhau"].ToString().Trim();

            
            string Email = "";
            string diaChi ="";
            string dienThoai ="";
            string gioiTinh ="";
            string ngaySinh ="";


            // Kiểm tra mật khẩu mới có trùng nhau không ?
            if (sMatKhau != sNhapLaiMatKhau)
            {
                ViewBag.thongBao = "Mật khẩu xác nhận không khớp !";
                return View();
            }
            string cmd = "insert into KhachHang values (N'" + sHoVaTen + "', '" + sTaiKhoan + "', '" + sMatKhau + "', '" + Email + "', N'" + diaChi + "', '" + dienThoai + "', N'" + gioiTinh + "', '" + ngaySinh + "')";
            db.Database.ExecuteSqlCommand(cmd);

            return RedirectToAction("DangNhap");

        }

        // đăng nhập 
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string sTaiKhoan = f["txtTaiKhoan"].ToString().Trim();
            string sMatKhau = f["txtMatKhau"].ToString().Trim();
            if (sTaiKhoan == "admin")
            {
                var ad = db.KhachHangs.SingleOrDefault(n => n.TaiKhoan == sTaiKhoan && n.MatKhau  == sMatKhau);
                if (ad != null)
                {
                    Session["tenNguoiTruyCap"] = ad.HoTen;
                    return RedirectToAction("TimKiemSach", "Admin_63132835");
                }
            }
            var kh = db.KhachHangs.SingleOrDefault(n => n.TaiKhoan == sTaiKhoan && n.MatKhau == sMatKhau);
            if (kh != null)
            {
                Session["tenNguoiTruyCap"] = kh.HoTen;
                return RedirectToAction("Index", "Home_63132835");
            }
            ViewBag.ThongBao = "Tên tài khoản mật khẩu không đúng!";
            return View();
        }

        // đổi mật khẩu 
        public ActionResult DoiMatKhau()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DoiMatKhau(string taiKhoan, string matKhauMoi)
        {
            string cmd = "update KhachHang set MatKhau = '" + matKhauMoi + "' where TaiKhoan = '" + taiKhoan + "'";
            db.Database.ExecuteSqlCommand(cmd);
            var js = "<script> alert('Đổi mật khẩu thành công'); window.location.href = '/NguoiDung_63132835/DangNhap' </script>";
            return Content(js, "text/html");
        }
    }
}