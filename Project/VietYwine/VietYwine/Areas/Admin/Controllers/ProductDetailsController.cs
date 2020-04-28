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
    public class ProductDetailsController : Controller
    {
        public readonly IproductDetailsService _db;
        public ProductDetailsController()
        {
            _db = new ProductDetailsService();
        }
        // GET: Admin/ProductDetails
        public ActionResult _Index(int id)
        {
            var data = _db.getDataByIDProduct(id);
            ViewBag.dataProduct = _db.dataProduct(id);
            return PartialView(data);
        }
        public ActionResult Create(int productID)
        {
            ViewBag.productID = productID;
            return PartialView();
        }
        [HttpPost]
        public ActionResult Create(int productID, string name, string description)
        {
            _db.createData(productID, name, description, Session["userName"].ToString(), Session["userName"].ToString());
            var data = _db.getDataByIDProduct(productID);
            ViewBag.dataProduct = _db.dataProduct(productID);
            return PartialView("_Index", data);
        }
        public ActionResult Details(int id, int productID)
        {
            var data = _db.getByID(id);
            ViewBag.dataProduct = _db.dataProduct(productID);
            return PartialView(data);
        }
        public ActionResult Edit(int id, int productID)
        {
            var data = _db.getByID(id);
            ViewBag.productID = productID;
            return PartialView(data);
        }
        [HttpPost]
        public ActionResult Edit(int id, int productID, string name, string description, byte status)
        {
            _db.updateData(id, productID, name, description, status, Session["userName"].ToString());
            var data = _db.getDataByIDProduct(productID);
            ViewBag.dataProduct = _db.dataProduct(productID);
            return PartialView("_Index", data);
        }
        [HttpPost]
        public ActionResult Delete(int id, int productID)
        {
            _db.deleteData(id);
            var data = _db.getDataByIDProduct(productID);
            ViewBag.dataProduct = _db.dataProduct(productID);
            return PartialView("_Index", data);
        }
    }
}