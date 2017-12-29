using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain.Abstract
{
    public interface IRepository
    {
        IEnumerable<Entrant> Entrants { get; }
        void SaveEntrant(Entrant entrant);
        Entrant DeleteEntrant(int entrantID);
        Entrant Find(int entrantID);
        IEnumerable<Entrant> GetPage(int pageNumber, int pageSize);
    }
}
