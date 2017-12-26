using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EntrantsDomain.Abstract;
using EntrantsWeb.Models;
using EntrantsDomain;

namespace EntrantsWeb.Controllers
{
    public class SelectedEntrantsController : Controller
    {
        private IRepository repository;

        public SelectedEntrantsController(IRepository repParam)
        {
            repository = repParam;
        }
        // GET: SelectedEntrants
        public ViewResult ShowSelectedEntrants()
        {
            return View(GetSelected());
        }
        
        public ActionResult Remove(int entrantID)
        {
            Entrant entrant = repository.Entrants.Where(e => e.EntrantID == entrantID).FirstOrDefault();
            if (entrant != null)
            {
                GetSelected().RemoveEntrant(entrant);
            }
            return RedirectToAction("ShowSelectedEntrants");
        }

        
        public ActionResult AddToSelected(int entrantID, int page)
        {
            Entrant entrant = repository.Entrants.Where(e => e.EntrantID == entrantID).FirstOrDefault();
            if (entrant != null)
            {
                GetSelected().AddEntrant(entrant);
            }
            return RedirectToAction("List", "Entrant", new { Page = page.ToString() });
        }

        public SelectedEntrants GetSelected()
        {
            SelectedEntrants selected = (SelectedEntrants)Session["Selected"];
            if (selected == null)
            {
                selected = new SelectedEntrants();
                Session["Selected"] = selected;
            }
            return selected;
        }
    }
}