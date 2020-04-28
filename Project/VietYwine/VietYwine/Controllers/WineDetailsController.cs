using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class WineDetailsController : Controller
    {
        public readonly IproductDetailsService _db;
        public WineDetailsController()
        {
            _db = new ProductDetailsService();
        }
        // GET: WineDetails
        public ActionResult Index(int productID)
        {
            var data = _db.getDataByIDProduct(productID);
            return PartialView(data);
        }
    }
}