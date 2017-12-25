using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace EntrantsDomain.Concrete
{
    class EFDbContext : DbContext
    {
        public DbSet<Entrant> Entrants { get; set; }
    }

}
