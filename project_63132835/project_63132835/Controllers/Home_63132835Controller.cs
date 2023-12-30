using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using project_63132835.Models;
using PagedList.Mvc;
using PagedList;

namespace project_63132835.Controllers
{
    public class Home_63132835Controller : Controller
    {
        Project_QLS_63132835Entities db = new Project_QLS_63132835Entities();
        // GET: Home_63132835
        
        public ActionResult Index(int? page)
        {
            // tạo biến số sản phẩm trên trang có thể hiện ra rồi phân trang
            int pageSize = 3;
            //Nếu page không phải là null, thì pageNumber sẽ có giá trị bằng giá trị của page.
            //Nếu page là null, thì pageNumber sẽ có giá trị là 1.
            int pageNuber = (page ?? 1);
            // trả lại các quyển sách cho trường mới là 1 sắp xếp theo giá bán 
            return View(db.Saches.Where(n=>n.Moi==1).OrderBy(n=>n.GiaBan).ToPagedList(pageNuber,pageSize));
        }
      
    }
}