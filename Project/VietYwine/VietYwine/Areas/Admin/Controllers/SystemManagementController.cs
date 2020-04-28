using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;
using Common;
using VietYwine.Attributes;

namespace VietYwine.Areas.Admin.Controllers
{
    [checkSession]
    public class SystemManagementController : Controller
    {
        public readonly IemployeeService _db;
        public SystemManagementController()
        {
            _db = new EmployeeService();
        }
        // GET: Admin/SystemManagement
        [Route("SystemManagement")]
        public ActionResult Index()
        {
            return View();
        }
        [Route("Login")]
        [noneCheck]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [noneCheck]
        public JsonResult Login(string email, string passWord)
        {
            responData<Employee> res = _db.checkLogin(email, passWord);
            if (res.Data != null)
            {
                Session["userID"] = res.Data.ID;
                Session["userAva"] = res.Data.avatar;
                Session["userFirstName"] = res.Data.firstName;
                Session["userName"] = res.Data.lastName + " " + res.Data.firstName;
            }
            return Json(res, JsonRequestBehavior.AllowGet);
        }
        [noneCheck]
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Login");
        }
        [Route("Error404")]
        [noneCheck]
        public ActionResult Error404()
        {
            return View();
        }
    }
}