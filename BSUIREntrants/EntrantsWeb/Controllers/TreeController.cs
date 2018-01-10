using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EntrantsDomain.UniversityStructure;
using EntrantsDomain.Concrete;
using EntrantsWeb.Models;
using System.Reflection;

namespace EntrantsWeb.Controllers
{
    public class TreeController : Controller
    {
        UniversityStructureRepository rep = new UniversityStructureRepository();
        University BSUIR = new University();

        // GET: Tree
        public ActionResult Index()
        {
            return View(BSUIR);
        }

        public JsonResult GetChildren(string typeName, int? id)
        {
            if (typeName == "root") return Json(TreeLoader.GetNodeInfo(BSUIR), JsonRequestBehavior.AllowGet);
            object wanted = TreeLoader.GetNodeInfo(typeName, (int)id, rep); 
            return Json(wanted, JsonRequestBehavior.AllowGet);
        }
    }
}