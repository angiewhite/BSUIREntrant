using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain
{
    public class Region
    {
        public Region()
        {
            Localities = new HashSet<Locality>();
        }

        public int RegionId { get; set; }
        public string RegionalCenter { get; set; }

        public virtual ICollection<Locality> Localities { get; set; }
    }
}
