using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Service;
using Model;

namespace VietYwine.Controllers
{
    public class WinesController : Controller
    {
        public readonly IproductService _db;
        public WinesController()
        {
            _db = new ProductService();
        }
        // GET: Wines
        public ActionResult getAll(int? page)
        {
            ViewBag.dataProducer = _db.dataProducer();
            var data = _db.getAllWine(page);
            return PartialView(data);
        }
        public ActionResult getByCategoryID(int? page, int categoryID)
        {
            var data = _db.getByCategoryId(page, categoryID);
            ViewBag.categoryID = categoryID;
            ViewBag.dataProducer = _db.dataProducer();
            return PartialView(data);
        }
        public ActionResult productDetails(string slug)
        {
            var data = _db.getBySlug(slug);
            ViewBag.dataCategory = _db.dataCategory();
            ViewBag.dataProducer = _db.dataProducer();
            return View(data);
        }
        public ActionResult sameTop6Product(int id, int categoryID)
        {
            var data = _db.getTop6Data(id, categoryID);
            ViewBag.dataProducer = _db.dataProducer();
            return PartialView(data);
        }
        public ActionResult selectTop3Product()
        {
            var data = _db.getTop3Product();
            return PartialView(data);
        }
    }
}