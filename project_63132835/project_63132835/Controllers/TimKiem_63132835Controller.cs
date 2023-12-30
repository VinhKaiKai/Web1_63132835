using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using project_63132835.Models;

namespace project_63132835.Controllers
{
    public class TimKiem_63132835Controller : Controller
    {
        // GET: TimKiem_63132835
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        [HttpPost]
        public ActionResult KetQuaTimKiem(FormCollection f, int? page)
        {
            string sTuKhoa = f["txtTimKiem"].ToString();
            ViewBag.TuKhoa = sTuKhoa;
            List<Sach> lstKQTK = db.Saches.Where(n => n.TenSach.Contains(sTuKhoa)).ToList();
            // Phân trang cho tìm kiếm
            int pageNumber = (page ?? 1);
            int pageSize = 3;
            if (lstKQTK.Count == 0 )
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm nào!";
                // xuất ra hết sản phẩm
                return View(db.Saches.OrderBy(n => n.TenSach).ToPagedList(pageNumber,pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKQTK.Count + " Kết quả !";
            return View(lstKQTK.OrderBy(n=>n.TenSach).ToPagedList(pageNumber,pageSize));
        }


        //Phân trang thì get để lấy đc giá trị tìm kiếm 
        [HttpGet]
        public ActionResult KetQuaTimKiem(string sTuKhoa, int? page)
        {
            List<Sach> lstKQTK = db.Saches.Where(n => n.TenSach.Contains(sTuKhoa)).ToList();
            // Phân trang cho tìm kiếm
            int pageNumber = (page ?? 1);
            int pageSize = 3;
            if (lstKQTK.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm nào!";
                return View(db.Saches.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKQTK.Count + " Kết quả !";
            return View(lstKQTK.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
        }
    }
}