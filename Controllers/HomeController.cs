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
            return View();
        }

    }
}
