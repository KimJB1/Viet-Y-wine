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
    public class RestaurantController : Controller
    {
        public readonly IrestaurantService _db;
        public RestaurantController()
        {
            _db = new RestaurantService();
        }
        // GET: Admin/Restaurant
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
        public ActionResult Create(string name, string address, string email, string phone, string map)
        {
            _db.createData(name, address, email, phone, map, Session["userName"].ToString(), Session["userName"].ToString());
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
        public ActionResult Edit(int id, string name, string address, string email, string phone, string map, byte status)
        {
            _db.updateData(id, name, address, email, phone, map, status, Session["userName"].ToString());
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