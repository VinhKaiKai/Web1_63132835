using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using project_63132835.Models;
namespace project_63132835.Controllers
{
    public class ChuDe_63132835Controller : Controller
    {
        // GET: ChuDe_63132835
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        // lấy 5 chủ đề từ data ra để hiển thị
        public ActionResult ChuDePartial()
        {
            return PartialView(db.ChuDes.Take(5).ToList());
        }
        //Sách theo chủ đề
        public ViewResult SachTheoChuDe(int MaChuDe=0)
        {
            // Kiểm tra chủ đề tồn tại hay không
            ChuDe cd = db.ChuDes.SingleOrDefault(n => n.MaChuDe == MaChuDe);
            if(cd== null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // truy Xuất sách theo chủ đề đã chọn
            List<Sach> lstSach = db.Saches.Where(n=>n.MaChuDe==MaChuDe).OrderBy(n=>n.GiaBan).ToList();
            if(lstSach.Count == 0 )
            {
                ViewBag.Sach = "Không có sách nào thuộc chủ đề này";
            }
            return View(lstSach);
        }
        // hiển thị tất cả chủ đề ra màn hình cho người dùng chọn thay vì chỉ hiện ra 5 chủ đề
        public ViewResult DanhMucChuDe()
        {
            return View(db.ChuDes.ToList());
        }
        
    }
}