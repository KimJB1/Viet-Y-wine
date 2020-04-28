using System.Web.Mvc;

namespace VietYwine.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Login",
                "dang-nhap-he-thong",
                new { AreaName="Admin", controller= "SystemManagement", action = "Login", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "SystemManagement",
                "trang-chu-quan-tri",
                new { AreaName="Admin", controller= "SystemManagement", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Error404",
                "error-404",
                new { AreaName="Admin", controller= "SystemManagement", action = "Error404", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "About",
                "quan-tri-trang-gioi-thieu",
                new { AreaName="Admin", controller= "About", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Category",
                "quan-tri-hang-ruou",
                new { AreaName="Admin", controller= "Category", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Employee",
                "quan-tri-nhan-vien",
                new { AreaName="Admin", controller= "Employee", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Post",
                "quan-tri-bai-dang",
                new { AreaName="Admin", controller= "Post", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Producer",
                "quan-tri-nha-san-xuat",
                new { AreaName="Admin", controller= "Producer", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Product",
                "quan-tri-san-pham",
                new { AreaName="Admin", controller= "Product", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Restaurant",
                "quan-tri-nha-hang",
                new { AreaName="Admin", controller= "Restaurant", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
            context.MapRoute(
                "Video",
                "quan-tri-video",
                new { AreaName="Admin", controller= "Video", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );


            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { controller= "SystemManagement", action = "Index", id = UrlParameter.Optional },
                new string[] { "VietYwine.Areas.Admin.Controllers" }
            );
        }
    }
}