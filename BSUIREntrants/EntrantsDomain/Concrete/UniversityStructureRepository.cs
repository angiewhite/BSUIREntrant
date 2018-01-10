using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsDomain.UniversityStructure;

namespace EntrantsDomain.Concrete
{
    public class UniversityStructureRepository
    {
        EFDbContext context = new EFDbContext();

        public IQueryable<Faculty> Faculties => context.Faculties;
        public IQueryable<Specialty> Specialties => context.Specialties;
        public IQueryable<Subject> Subjects => context.Subjects;
    }
}
