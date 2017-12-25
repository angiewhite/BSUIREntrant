using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EntrantsDomain;

namespace EntrantsWeb.Models
{
    public class EntrantsListViewModel
    {
        public IEnumerable<Entrant> Entrants { get; set; }
        public PagingInfo PagingInfo { get; set; }
    }
}