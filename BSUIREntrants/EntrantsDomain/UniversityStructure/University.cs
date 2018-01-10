using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsDomain.Concrete;

namespace EntrantsDomain.UniversityStructure
{
    public class University
    {
        private EFDbContext context = new EFDbContext();

        public University()
        {
            Faculties = context.Faculties;
        }

        public string UniversityName { get; set; }
        public IEnumerable<Faculty> Faculties { get; set; }
    }
}
