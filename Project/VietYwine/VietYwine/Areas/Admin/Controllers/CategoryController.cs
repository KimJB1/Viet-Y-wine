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
    public class CategoryController : Controller
    {
        public readonly IcategoryService _db;
        public CategoryController()
        {
            _db = new CategoryService();
        }
        // GET: Admin/Category
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
        public ActionResult Create(string name, string slug, string metaTitle, string metaKeyword, string metaDescription)
        {
            _db.createData(name, slug, metaTitle, metaKeyword, metaDescription, Session["userName"].ToString(), Session["userName"].ToString());
            var data = _db.getData();
            return PartialView("_index", data);
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
        public ActionResult Edit(int id, string name, string slug, string metaTitle, string metaKeyword, string metaDescription, byte status)
        {
            _db.updateData(id, name, slug, metaTitle, metaKeyword, metaDescription, status, Session["userName"].ToString());
            var data = _db.getData();
            return PartialView("_index", data);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            _db.deleteData(id);
            var data = _db.getData();
            return PartialView("_index", data);
        }

        public ActionResult chkData()
        {
            var data = _db.getData();
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}