using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using mvcproje.Models.Entit;
namespace mvcproje.Controllers
{
    public class LoginController : Controller
    {
        DbOtelEntities2 db = new DbOtelEntities2();
        [HttpGet]

        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(YeniKayit t)
        {
            var bilgiler = db.YeniKayit.FirstOrDefault(x => x.Mail == t.Mail && x.Sifre == t.Sifre);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.Mail, false);
                Session["Mail"] = bilgiler.Mail.ToString();
                return RedirectToAction("Index", "Misafir");

            }
            else
            {
                return RedirectToAction("Index");
            }

            return View();
        }
    }
}