using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using EntrantsDomain.UniversityStructure;

namespace EntrantsDomain.Concrete
{
    class EFDbContext : DbContext
    {
        public DbSet<Entrant> Entrants { get; set; }
        public DbSet<Region> Regions { get; set; }
        public DbSet<Locality> Localities { get; set; }
        public DbSet<School> Schools { get; set; }
        public DbSet<Faculty> Faculties { get; set; }
        public DbSet<Specialty> Specialties { get; set; }
        public DbSet<Subject> Subjects { get; set; }
    }

}
