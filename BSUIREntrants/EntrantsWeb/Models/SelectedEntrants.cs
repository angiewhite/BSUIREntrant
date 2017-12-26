using System;
using System.Collections.Generic;
using System.Linq;
using EntrantsDomain;
using System.Web;

namespace EntrantsWeb.Models
{
    public class SelectedEntrants
    {
        private List<Entrant> selectedCollection = new List<Entrant>();
        public void AddEntrant(Entrant entrant)
        {
            Entrant line = selectedCollection.Where(e => e.EntrantID == entrant.EntrantID).FirstOrDefault();
            if (line == null)
            {
                selectedCollection.Add(entrant);
            }
        }
        public void RemoveEntrant(Entrant entrant)
        {
            selectedCollection.RemoveAll(e => e.EntrantID == entrant.EntrantID);
        }
        public void Clear()
        {
            selectedCollection.Clear();
        }
        public IEnumerable<Entrant> Selected => selectedCollection;
    }
}