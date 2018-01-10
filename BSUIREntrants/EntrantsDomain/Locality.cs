using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain
{
    public class Locality
    {
        public Locality()
        {
            Schools = new HashSet<School>();
        }
        
        public int LocalityId { get; set; }
        public string LocalityName { get; set; }
        public int RegionId { get; set; }

        public virtual ICollection<School> Schools { get; set; }
    }
}
