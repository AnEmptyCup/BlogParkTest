using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BlogParkTestPro.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "修改此模板来开始你的ASP.NET MVC应用程序.是发";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "你的应用程序描述页.是";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "您的联系页面.是";

            return View();
        }
    }
}
