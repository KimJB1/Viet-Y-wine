using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;
using VietYwine.Attributes;

namespace VietYwine.Areas.Admin.Controllers
{
    [checkSession]
    public class PostController : Controller
    {
        public readonly IpostService _db;
        public PostController()
        {
            _db = new PostService();
        }
        // GET: Admin/Post
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _Index()
        {
            var data = _db.getData();
            return PartialView(data);
        }
        public ActionResult Create()
        {
            return PartialView();
        }
        [HttpPost]
        public ActionResult Create(string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug)
        {
            _db.createData(name, avatar, category, summaryContent, mainContent, metaTitle, metaKeyword, metaDescription, slug, Session["userName"].ToString(), Session["userName"].ToString());
            var data = _db.getData();
            return PartialView("_Index", data);
        }
        public ActionResult Details(int id)
        {
            var data = _db.getByID(id);
            return PartialView(data);
        }
        public ActionResult Edit(int id)
        {
            var data = _db.getByID(id);
            return PartialView(data);
        }
        [HttpPost]
        public ActionResult Edit(int id, string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, byte status)
        {
            _db.updateData(id, name, avatar, category, summaryContent, mainContent, metaTitle, metaKeyword, metaDescription, slug, status, Session["userName"].ToString());
            var data = _db.getData();
            return PartialView("_Index", data);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            _db.deleteData(id);
            var data = _db.getData();
            return PartialView("_Index", data);
        }

        [HttpPost]
        public ActionResult chkData()
        {
            var data = _db.getData();
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}