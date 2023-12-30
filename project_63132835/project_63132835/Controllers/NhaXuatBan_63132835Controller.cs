using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using project_63132835.Models;

namespace project_63132835.Controllers
{
    public class NhaXuatBan_63132835Controller : Controller
    {
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        // GET: NhaXuatBan_63132835
        public PartialViewResult NhaXuatBanPartial()
        {
            return PartialView(db.NhaXuatBans.Take(10).OrderBy(n => n.TenNXB).ToList());
        }

        // hieen thi sach theo nha xuat ban
        public ViewResult SachTheoNXB(int MaNXB=0)
        {
            // kieem tra chu de ton tai
            NhaXuatBan nxb = db.NhaXuatBans.SingleOrDefault(n => n.MaNXB == MaNXB);
            if (nxb == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // truy xuat danh sach theo nha xuat ban
            List<Sach> lstSach = db.Saches.Where(n => n.MaNXB ==MaNXB).OrderBy(n => n.GiaBan).ToList();
            if (lstSach.Count == 0)
            {
                ViewBag.Sach = "Không có sách nào thuộc chủ đề này";
            }
            return View(lstSach);
            
        }
        public ViewResult DanhMucNXB()
        {
            return View(db.NhaXuatBans.ToList());
        }
    }
}