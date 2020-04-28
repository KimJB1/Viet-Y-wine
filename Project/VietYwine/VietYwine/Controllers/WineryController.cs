using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class WineryController : Controller
    {
        public readonly IcategoryService _db;
        public WineryController()
        {
            _db = new CategoryService();
        }
        // GET: Winery
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult winery()
        {
            var data = _db.getLstCategory();
            return PartialView(data);
        }
    }
}