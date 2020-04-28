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
    public class AboutController : Controller
    {
        public readonly IaboutService _db;
        public AboutController()
        {
            _db = new AboutService();
        }
        // GET: Admin/About
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
        public ActionResult Create(string name, string description)
        {
            _db.createData(name, description, Session["userName"].ToString(), Session["userName"].ToString());
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
        public ActionResult Edit(int id, string name, string description, byte status)
        {
            _db.updateData(id, name, description, status, Session["userName"].ToString());
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

        public ActionResult chkData()
        {
            var data = _db.getData();
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}