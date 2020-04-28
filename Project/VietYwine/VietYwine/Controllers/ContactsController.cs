using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class ContactsController : Controller
    {
        public readonly IrestaurantService _db;
        public ContactsController()
        {
            _db = new RestaurantService();
        }
        // GET: Contacts
        public ActionResult Index()
        {
            var data = _db.selectAllData();
            return View(data);
        }
        public ActionResult showMap(int id)
        {
            var data = _db.getByID(id);
            return PartialView(data);
        }
    }
}