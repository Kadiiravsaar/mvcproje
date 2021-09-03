using mvcproje.Models.Entit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproje.Controllers
{
   
    public class RezervasyonController : Controller
    {
        DbOtelEntities2 db = new DbOtelEntities2();
        [Authorize]
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(TblRez p)
        {
            var misafirmail = (string)Session["Mail"];
            var misafirid = db.YeniKayit.Where(x => x.Mail == misafirmail).Select(x => x.ID).FirstOrDefault();
            p.Misafi = misafirid;
            db.TblRez.Add(p);
            db.SaveChanges();
            return RedirectToAction("Rezervasyon", "Misafir");
        }
    }
}