﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EntrantsDomain.Concrete;
using EntrantsDomain;

namespace EntrantsWeb.Controllers
{
    public class RLSController : Controller
    {
        RLSRepository rep = new RLSRepository();
        // GET: RLS
        public ViewResult Index()
        {
            return View(rep.Regions);
        }

        public JsonResult GetSchools(int LocalityId = 0)
        {
            return Json(rep.Schools.Where(s => s.LocalityId == LocalityId), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetLocalities(int RegionId = 0)
        {
            return Json(rep.Localities.Where(l => l.RegionId == RegionId), JsonRequestBehavior.AllowGet);
        }
    }
}