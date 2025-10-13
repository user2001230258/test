using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using _39_HoangVanHoan_Tuan08.Models;

namespace _39_HoangVanHoan_Tuan08.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        QuanLyTinTucDataContext data = new QuanLyTinTucDataContext();
        public ActionResult Index()
        {
            List<Theloaitin> ds = data.Theloaitins.ToList();
            return View(ds);
        }
        // Create
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Theloaitin ltin)
        {
            data.Theloaitins.InsertOnSubmit(ltin);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }

        // Edit     
        public ActionResult Edit(int id)
        {
            var E_tin = data.Theloaitins.First(m => m.IDLoai == id);
            return View(E_tin); // Truyen model view
        }
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            // tao 1 bien Ltin gan voi doi tuong co id=id truyen vao
            var Ltin = data.Theloaitins.First(m => m.IDLoai == id);
            var E_Loaitin = collection["Tentheloai"];

            Ltin.IDLoai = id;
            Ltin.Tentheloai = E_Loaitin;
            // thuc hien update
            UpdateModel(Ltin);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }

        // Delete
        public ActionResult Delete(int id)
        {
            var D_tin = data.Theloaitins.FirstOrDefault(m => m.IDLoai == id);
            return View(D_tin);
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var D_tin = data.Theloaitins.Where(m => m.IDLoai == id).First();
            data.Theloaitins.DeleteOnSubmit(D_tin);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }

        // Details
        public ActionResult Details(int id)
        {
            var Details_tin = data.Theloaitins.Where(m => m.IDLoai == id).First();
            return View(Details_tin);
        }

    }
}





