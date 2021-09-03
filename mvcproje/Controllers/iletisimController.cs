using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcproje.Models.Entit;

namespace mvcproje.Controllers
{
    public class iletisimController : Controller
    {
        DbOtelEntities2 db = new DbOtelEntities2();
        public ActionResult Index()
        {
            var bilgiler = db.iletisim.ToList();
            return View(bilgiler);
        }
        [HttpGet]
        public PartialViewResult MesajGonder()
        {
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult MesajGonder(mesajlar m)
        {
            db.mesajlar.Add(m);
            db.SaveChanges();
            return PartialView();
        }
    }
}