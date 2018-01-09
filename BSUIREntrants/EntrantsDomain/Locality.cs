using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain
{
    public class Locality
    {
        public int LocalityId { get; set; }
        public string LocalityName { get; set; }
        public int RegionId { get; set; }
        public Region Region { get; set; }
    }
}
