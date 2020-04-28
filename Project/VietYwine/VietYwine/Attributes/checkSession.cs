using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VietYwine.Attributes
{
    public class checkSession : ActionFilterAttribute
    {
        //trước khi vào các action thì nó sẽ thực hiện hành động này trước
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //Kiểm tra action mà có attribute là noneCheck thì sẽ chạy luôn không phải kiểm tra
            var noneChk = filterContext.ActionDescriptor.GetCustomAttributes(typeof(noneCheck), true).Count() > 0;
            if (noneChk)
            {
                return;
            }

            var session = filterContext.HttpContext.Session["userID"];
            if (session == null)
            {
                filterContext.Result = new RedirectResult("/dang-nhap-he-thong");
                return;
            }
            base.OnActionExecuting(filterContext);
        }
    }
}