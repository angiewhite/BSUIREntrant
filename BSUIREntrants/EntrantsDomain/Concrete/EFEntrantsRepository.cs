using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsDomain.Abstract;

namespace EntrantsDomain.Concrete
{
    public class EFEntrantsRepository: IRepository
    {
        private EFDbContext context = new EFDbContext();

        public IEnumerable<Entrant> Entrants
        {
            get { return context.Entrants; }
        }

        public void SaveEntrant(Entrant entrant)
        {
            if (entrant.EntrantID == 0)
            {
                context.Entrants.Add(entrant);
            }
            else
            {
                Entrant dbEntry = context.Entrants.Find(entrant.EntrantID);
                if (dbEntry != null)
                {
                    dbEntry.FirstName = entrant.FirstName;
                    dbEntry.LastName = entrant.LastName;
                    dbEntry.FatherName = entrant.FatherName;
                    dbEntry.BirthDate = entrant.BirthDate;
                    dbEntry.GPA = entrant.GPA;
                    dbEntry.Town = entrant.Town;
                    dbEntry.Address = entrant.Address;
                    dbEntry.Biography = entrant.Biography;
                    dbEntry.School = entrant.School;
                    dbEntry.PhoneNumber = entrant.PhoneNumber;
                }
            }
            context.SaveChanges();
        }

        public Entrant DeleteEntrant(int entrantID)
        {
            Entrant dbEntry = context.Entrants.Find(entrantID);
            if (dbEntry != null)
            {
                context.Entrants.Remove(dbEntry);
                context.SaveChanges();
            }
            return dbEntry;
        }

        public Entrant Find(int entrantID) => Entrants.FirstOrDefault(e => e.EntrantID == entrantID);

        public IEnumerable<Entrant> GetPage(int pageNumber, int pageSize)
        {
            return Entrants.OrderByDescending(x => x.GPA).Skip((pageNumber - 1) * pageSize).Take(pageSize);
        }
    }
}
