using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using mvcproje.Models.Entit;
namespace mvcproje.Controllers
{
    [Authorize]
    public class MisafirController : Controller
    {
        DbOtelEntities2 db = new DbOtelEntities2();
        public ActionResult Index()
        {
            var misafirmail = (string)Session["Mail"];
            var misbilgi = db.YeniKayit.Where(x => x.Mail == misafirmail).FirstOrDefault();
            return View(misbilgi);
        }
        public ActionResult Rezervasyon()
        {
            var misafirmail = (string)Session["Mail"];
            //ViewBag.a = misafirmail;
            var misafirid = db.YeniKayit.Where(x => x.Mail == misafirmail).Select(y => y.ID).FirstOrDefault();

            var deger = db.TblRez.Where(x => x.Misafi == misafirid).ToList();   
            
            return View(deger);
        }
        public ActionResult MisafirGuncelle(YeniKayit p)
        {
            var degerler = db.YeniKayit.Find(p.ID);
            degerler.AdSoyad = p.AdSoyad;
            degerler.Sifre = p.Sifre;
            degerler.Telefon = p.Telefon;
            db.SaveChanges();

            return RedirectToAction("Index");
        }
        public ActionResult logOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index", "Anasayfa");
        }








    }
}