using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EntrantsDomain;
using EntrantsDomain.Abstract;
using EntrantsWeb.Models;

namespace EntrantsWeb.Controllers
{
    public class EntrantController : Controller
    {
        private IRepository repository;

        public int PageSize { get; set; } = 5;

        public EntrantController(IRepository repParam)
        {
            repository = repParam;
        }

        public ViewResult List(int page = 1)
        {
            EntrantsListViewModel model = new EntrantsListViewModel
            {
                Entrants = repository.Entrants.OrderByDescending(x => x.GPA).Skip((page - 1) * PageSize).Take(PageSize),
                PagingInfo = new PagingInfo
                {
                    CurrentPage = page,
                    PageSize = PageSize,
                    TotalItems = repository.Entrants.Count()
                }
            };
            ViewBag.Page = page;
            return View(model);
        }

        public ViewResult CreateEntrant()
        {
            ViewBag.Title = "New entrant";
            return View("Edit", new Entrant());
        }

        public ViewResult Edit(int entrantId)
        {
            Entrant entrant = repository.Entrants.FirstOrDefault(e => e.EntrantID == entrantId);
            ViewBag.Title = "Edit";
            return View(entrant);
        }

        [HttpPost]
        public ActionResult Edit(Entrant entrant)
        {
            if (ModelState.IsValid)
            {
                repository.SaveEntrant(entrant);
                return RedirectToAction("List");
            }
            else
            {
                return View(entrant);
            }
        }

        [HttpPost]
        public ActionResult Delete(int entrantID)
        {
            Entrant deletedEntrant = repository.DeleteEntrant(entrantID);
            return RedirectToAction("List");
        }
    }
}