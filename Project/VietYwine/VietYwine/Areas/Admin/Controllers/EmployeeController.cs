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
    public class EmployeeController : Controller
    {
        public readonly IemployeeService _db;
        public EmployeeController()
        {
            _db = new EmployeeService();
        }
        // GET: Admin/Employee
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
        public ActionResult Create(string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string passWord, string avatar, string hobbies, string description)
        {
            _db.insertData(lastName, firstName, birthday, gender, email, phone, address, isSupperAdmin, passWord, avatar, hobbies, description, Session["userName"].ToString(), Session["userName"].ToString());
            var data = _db.getData();
            return PartialView("_Index", data);
        }
        public ActionResult Edit(int id)
        {
            var data = _db.getByID(id);
            return PartialView(data);
        }
        [HttpPost]
        public ActionResult Edit(int id, string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string avatar, string hobbies, string description, byte status)
        {
            _db.updateData(id, lastName, firstName, birthday, gender, email, phone, address, isSupperAdmin, avatar, hobbies, description, status, Session["userName"].ToString());
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
        public ActionResult Details(int id)
        {
            var data = _db.getByID(id);
            return PartialView(data);
        }

        //Check data
        [HttpPost]
        public JsonResult chkData()
        {
            var data = _db.getData();
            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}