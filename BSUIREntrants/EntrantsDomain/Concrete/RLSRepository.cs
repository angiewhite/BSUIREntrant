using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain.Concrete
{
    public class RLSRepository
    {
        private EFDbContext context = new EFDbContext();

        public IEnumerable<Region> Regions => context.Regions.OrderBy(x => x.RegionalCenter);
        public IEnumerable<Locality> Localities => context.Localities.OrderBy(x => x.LocalityName);
        public IEnumerable<School> Schools => context.Schools.OrderBy(x => x.SchoolName);
    }
}
