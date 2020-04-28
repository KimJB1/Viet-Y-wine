using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace VietYwine
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "ProductDetail",
                url: "ruou/{slug}",
                defaults: new { controller = "Wines", action = "productDetails", slug = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "postDetail",
                url: "doc/{slug}",
                defaults: new { controller = "News", action = "postDetails", slug = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "HomeClient",
                url: "trang-chu",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "Winery",
                url: "hang-ruou",
                defaults: new { controller = "Winery", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "News",
                url: "tin-tuc",
                defaults: new { controller = "News", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "Knowledge",
                url: "kien-thuc",
                defaults: new { controller = "Knowledge", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
            routes.MapRoute(
                name: "Contacts",
                url: "lien-he",
                defaults: new { controller = "Contacts", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "VietYwine.Controllers" }
            );
        }
    }
}
