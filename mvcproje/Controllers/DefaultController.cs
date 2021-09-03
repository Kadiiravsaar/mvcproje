using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcproje.Models.Entit;

namespace mvcproje.Controllers
{   
    public class DefaultController : Controller
    {
        // GET: Default
        DbOtelEntities2 db = new DbOtelEntities2();
        public ActionResult Hakkımda()
        {
            var veriler = db.Hakkimda.ToList();
            return View(veriler);
        }
        public PartialViewResult PartialFooter()
        {
            return PartialView();
        }
        public PartialViewResult PartialSosyalMedya()
        {
            return PartialView();
        }
    }
}