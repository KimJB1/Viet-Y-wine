using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class NewsController : Controller
    {
        public readonly IpostService _db;
        public NewsController()
        {
            _db = new PostService();
        }
        // GET: News
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _Index(int? page)
        {
            var data = _db.getLstNews(page);
            return PartialView(data);
        }
        public ActionResult getTop3News()
        {
            var data = _db.getTop3News();
            return PartialView(data);
        }
        public ActionResult itemRight()
        {
            return PartialView();
        }
        public ActionResult selectTop3News()
        {
            var data = _db.getTop3News();
            return PartialView(data);
        }
        public ActionResult postDetails(string slug)
        {
            var data = _db.getBySlug(slug);
            return View(data);
        }
    }
}