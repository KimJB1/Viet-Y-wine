using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class HomeController : Controller
    {
        public readonly IaboutService _db;
        public HomeController()
        {
            _db = new AboutService();
        }
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult about()
        {
            var data = _db.getAbout();
            return PartialView(data);
        }
    }
}