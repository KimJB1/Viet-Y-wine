using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class KnowledgeController : Controller
    {
        public readonly IpostService _db;
        public KnowledgeController()
        {
            _db = new PostService();
        }
        // GET: Knowledge
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _Index(int? page)
        {
            var data = _db.getLstKnowledge(page);
            return PartialView(data);
        }
        public ActionResult top3Knowledge()
        {
            var data = _db.getTop3Knowledge();
            return PartialView(data);
        }
        public ActionResult selectTop3Knowledge()
        {
            var data = _db.getTop3Knowledge();
            return PartialView(data);
        }
    }
}