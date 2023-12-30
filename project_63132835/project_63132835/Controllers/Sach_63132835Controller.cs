using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using project_63132835.Models;
namespace project_63132835.Controllers
{
    public class Sach_63132835Controller : Controller
    {
        // GET: Sach_63132835
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        public PartialViewResult SachMoiPartial()
        {
            // Lấy 3 cuốn sách mới
            var lstSachMoi = db.Saches.Take(3).ToList();
            return PartialView(lstSachMoi);
        }
        //xem chi tiet
        public ViewResult XemChiTiet(int MaSach=0)
        {
            Sach sach = db.Saches.SingleOrDefault(n=>n.MaSach == MaSach);
            if(sach == null)
            {
                // tra lai loi
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.TenChuDe = db.ChuDes.Single(n => n.MaChuDe == sach.MaChuDe).TenChuDe;
            ViewBag.NhaXuatBan= db.NhaXuatBans.Single(n=>n.MaNXB==sach.MaNXB).TenNXB;
            return View(sach);
        }
    }
}