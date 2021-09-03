using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcproje.Models.Entit;
namespace mvcproje.Controllers
{
    public class KayitController : Controller
    {
        DbOtelEntities2 db = new DbOtelEntities2();
        [HttpGet]
        public ActionResult KayitOl()
        {
            return View();
        }
        [HttpPost]
        public ActionResult KayitOl(YeniKayit m)
        {
            var bilgiler = db.YeniKayit.ToList();
            db.YeniKayit.Add(m);
            db.SaveChanges();
            return RedirectToAction("Index","Login");
        }
    }
}