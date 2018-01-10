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

        public IQueryable<Region> Regions => context.Regions.OrderBy(x => x.RegionalCenter);
        public IQueryable<Locality> Localities => context.Localities.OrderBy(x => x.LocalityName);
        public IQueryable<School> Schools => context.Schools.OrderBy(x => x.SchoolName);

        public IEnumerable<Locality> GetLocalities(int RegionId) => Localities.Where(l => l.RegionId == RegionId);
        public IEnumerable<School> GetSchools(int LocalityId) => Schools.Where(s => s.LocalityId == LocalityId);
        public Region GetRegion(int RegionId) => Regions.Where(r => r.RegionId == RegionId).FirstOrDefault();
    }
}
