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
    public class ProductController : Controller
    {
        public readonly IproductService _db;
        public ProductController()
        {
            _db = new ProductService();
        }
        // GET: Admin/Product
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult _Index()
        {
            var data = _db.getData();
            ViewBag.dataCategory = _db.dataCategory();
            return PartialView(data);
        }
        public ActionResult create()
        {
            ViewBag.getCategories = _db.getCategory();
            ViewBag.getProducer = _db.getProducer();
            return PartialView();
        }
        [HttpPost]
        public ActionResult Create(string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription)
        {
            _db.createData(name, slug, avatar, categoryID, producerID, price, metaTitle, metaKeyword, metaDescription, Session["userName"].ToString(), Session["userName"].ToString());
            var data = _db.getData();
            ViewBag.dataCategory = _db.dataCategory();
            return PartialView("_Index", data);
        }
        public ActionResult Details(int id)
        {
            var data = _db.getByID(id);
            ViewBag.dataCategory = _db.dataCategory();
            ViewBag.dataProducer = _db.dataProducer();
            return PartialView(data);
        }
        public ActionResult Edit(int id)
        {
            var data = _db.getByID(id);
            ViewBag.getCategories = _db.getCategory();
            ViewBag.getProducer = _db.getProducer();
            return PartialView(data);
        }
        [HttpPost]
        public ActionResult Edit(int id, string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, byte status)
        {
            _db.updateData(id, name, slug, avatar, categoryID, producerID, price, metaTitle, metaKeyword, metaDescription, status, Session["userName"].ToString());
            var data = _db.getData();
            ViewBag.dataCategory = _db.dataCategory();
            return PartialView("_Index", data);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            _db.deleteData(id);
            var data = _db.getData();
            ViewBag.dataCategory = _db.dataCategory();
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