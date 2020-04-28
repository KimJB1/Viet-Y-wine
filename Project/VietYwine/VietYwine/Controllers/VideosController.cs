using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Service;

namespace VietYwine.Controllers
{
    public class VideosController : Controller
    {
        public readonly IvideoService _db;
        public VideosController()
        {
            _db = new VideoService();
        }
        // GET: Videos
        public ActionResult Index()
        {
            var data = _db.getVideo();
            return PartialView(data);
        }
    }
}