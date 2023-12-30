using project_63132835.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace project_63132835.Controllers
{
    public class Admin_63132835Controller : Controller
    {

        private Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        
        // Tìm kiếm sách
        public ActionResult TimKiemSach(string sTimKiem = "")
        {
            string cmd = "select * from Sach";
            if (sTimKiem.Length > 0) cmd += " where TenSach like '%" + sTimKiem+ "%'";
            var a = db.Database.SqlQuery<Sach>(cmd).ToList();
            return View(a);
        }

        // Hiển thị sửa sách
        public ActionResult SuaSach(int id)
        {
            var a = db.Saches.Find(id);
            return View(a);
        }
        // Xử lý sửa sách
        [HttpPost]
        public ActionResult SuaSach(int id, double GiaBan, string MoTa, int SoLuongTon, int Moi)
        {
            string cmd = "update Sach set GiaBan = " +GiaBan+ ", MoTa = N'" +MoTa+ "', SoLuongTon = " +SoLuongTon+ ", Moi = " +Moi+ " where MaSach = '" + id + "'";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemSach");
        }

        // Hiên thị trang xóa sách
        public ActionResult XoaSach(int id)
        {
            var a = db.Saches.Find(id);
            return View(a);
        }
        // Xử lý xóa sách
        [HttpPost]
        public ActionResult XoaSach(int id, string cmd)
        {
            cmd = "delete Sach where MaSach = '" + id + "'";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemSach");
        }

        // Thêm sách mới
        public ActionResult ThemSach()
        {
            ViewBag.MaNXB = new SelectList(db.NhaXuatBans, "MaNXB", "TenNXB");
            ViewBag.MaChuDe = new SelectList(db.ChuDes, "MaChuDe", "TenChuDe");
            return View();

        }

        // Xử lý thêm sách mới
        [HttpPost]
        public ActionResult ThemSach(string TenSach, double GiaBan, string MoTa, int SoLuongTon, int MaNXB, int MaChuDe)
        {
            string cmd = "";
            string _AnhBia = "";

            var img = Request.Files["AnhBia"];
            string fileImg = System.IO.Path.GetFileName(img.FileName);
            var path = Server.MapPath("/HinhAnhSP/" + fileImg);
            img.SaveAs(path);
            _AnhBia = fileImg;

            cmd = "insert Sach values (N'" +TenSach+ "', " +GiaBan+ ", N'" +MoTa+ "', N'" +_AnhBia+ "', GETDATE(), " + SoLuongTon+ ", " +MaNXB+ ", " +MaChuDe+ ", 0)";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemSach");
        }





        // Nhà Xuất Bản --------------------------------------------------------------------

        // thêm nhà xuất bản
        public ActionResult ThemNhaXuatBan()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemNhaXuatBan(string TenNXB, string DiaChi, string DienThoai)
        {
            string cmd = "insert into NhaXuatBan values (N'" +TenNXB+ "', N'" +DiaChi+ "', '" +DienThoai+ "')";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemNhaXuatBan");
        }

        // xóa nhà xuất bản
        public ActionResult XoaNhaXuatBan(int id)
        {
            var a = db.NhaXuatBans.Find(id);
            return View(a);
        }
        [HttpPost]
        public ActionResult XoaNhaXuatBan(int id, string cmd)
        {
            cmd = "delete NhaXuatBan where MaNXB = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemNhaXuatBan");
        }

        // sửa nhà xuất bản
        public ActionResult SuaNhaXuatBan(int id)
        {
            var a = db.NhaXuatBans.Find(id);
            return View(a);
        }
        [HttpPost]
        public ActionResult SuaNhaXuatBan(int id, string TenNXB, string DiaChi, string DienThoai)
        {
            string cmd = "update NhaXuatBan set TenNXB = N'" +TenNXB+ "', DiaChi = N'" +DiaChi+ "', DienThoai = '" +DienThoai+ "' where MaNXB = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemNhaXuatBan");
        }

        // tìm kiếm nhà xuất bản
        public ActionResult TimKiemNhaXuatBan(string sTimKiem = "")
        {
            string cmd = "select * from NhaXuatBan";
            if (sTimKiem.Length > 0) cmd += " where TenNXB like '%" + sTimKiem + "%'";
            var a = db.Database.SqlQuery<NhaXuatBan>(cmd).ToList();
            return View(a);
        }

        // thêm tác giả
        public ActionResult ThemTacGia()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemTacGia(string TenTacGia, string DiaChi, string TieuSu, string DienThoai)
        {
            string cmd = "insert into TacGia values (N'" + TenTacGia + "', N'" + DiaChi + "', N'" + TieuSu + "', '" + DienThoai + "')";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemTacGia");
        }

        // xóa tác giả 
        public ActionResult XoaTacGia(int id)
        {
            var a = db.TacGias.Find(id);
            return View(a);
            
        }
        [HttpPost]
        public ActionResult XoaTacGia(int id, string cmd)
        {
            cmd = "delete TacGia where MaTacGia = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemTacGia");

        }
        // sửa tác giả
        public ActionResult SuaTacGia(int id)   
        {
            var a = db.TacGias.Find(id);
            return View(a);
        }
        [HttpPost]
        public ActionResult SuaTacGia(int id, string TenTacGia, string DiaChi, string TieuSu, string DienThoai)
        {
            string cmd = "update TacGia set TenTacGia = N'" + TenTacGia + "', DiaChi = N'" + DiaChi + "', TieuSu = N'" + TieuSu + "', DienThoai = '" + DienThoai + "' where MaTacGia = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemTacGia");
        }
        // tìm kiếm tác giả 
        public ActionResult TimKiemTacGia(string sTimKiem = "")
        {
            string cmd = "select * from TacGia";
            if (sTimKiem.Length > 0) cmd += " where TenTacGia like N'%" + sTimKiem + "%'";
            var a = db.Database.SqlQuery<TacGia>(cmd).ToList();
            return View(a);
        }



        // Chủ đề -------------------------------------------------------------------------

        // Thêm chủ đề
        public ActionResult ThemChuDe()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemChuDe(string TenChuDe)
        {
            string cmd = "insert into ChuDe values (N'" + TenChuDe + "')";
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemChuDe");
        }
       

        // xóa chủ đề
        public ActionResult XoaChuDe(int id)
        {
            var a = db.ChuDes.Find(id);
            return View(a);
        }
        [HttpPost]
        public ActionResult XoaChuDe(int id, string cmd)
        {
            cmd = "delete ChuDe where MaChuDe = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemChuDe");
        }

        // sửa chủ đề
        public ActionResult SuaChuDe(int id)
        {
            var a = db.ChuDes.Find(id);
            return View(a);
        }

        [HttpPost]
        public ActionResult SuaChuDe(int id, string TenChuDe)
        {
            string cmd = "update ChuDe set TenChuDe = N'" + TenChuDe + "' where MaChuDe = " + id;
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemChuDe");
        }

        // tìm kiếm chủ đề
        public ActionResult TimKiemChuDe(string sTimKiem = "")
        {
            string cmd = "select * from ChuDe";
            if (sTimKiem.Length > 0) cmd += " where TenChuDe like N'%" + sTimKiem + "%'";
            var a = db.Database.SqlQuery<ChuDe>(cmd).ToList();
            return View(a);
        }

        //Tác giả--------------------------------------------------------------------------

        

        // Khách hàng ----------------------------------------------------------------------

        //Xóa khách hàng
        public ActionResult XoaKhachHang(int id)
        {
            var a = db.KhachHangs.Find(id);
            return View(a);
        }
        [HttpPost]
        public ActionResult XoaKhachHang(int id, string cmd)
        {
            cmd = "delete KhachHang where MaKH = " + id;    
            db.Database.ExecuteSqlCommand(cmd);
            return RedirectToAction("TimKiemKhachHang");
        }
        // tìm kiếm khách hàng
        public ActionResult TimKiemKhachHang(string sTimKiem = "")
        {
            string cmd = "select * from KhachHang";
            if (sTimKiem.Length > 0) cmd += " where HoTen like N'%" + sTimKiem + "%' or Email like '%" + sTimKiem + "%'or DiaChi like N'%" + sTimKiem + "%' or DienThoai like '%" + sTimKiem + "%' or GioiTinh like N'%" + sTimKiem + "%'";
            var a = db.Database.SqlQuery<KhachHang>(cmd).ToList();
            return View(a);
        }
    }
}