using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain
{
    public class School
    {
        public int SchoolId { get; set; }
        public string SchoolName { get; set; }
        public int LocalityId { get; set; }
        public Locality Locality { get; set; }
    }
}
