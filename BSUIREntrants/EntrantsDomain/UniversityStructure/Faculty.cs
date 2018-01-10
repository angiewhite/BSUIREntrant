using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain.UniversityStructure
{
    public class Faculty
    {
        public Faculty()
        {
            Specialties = new HashSet<Specialty>();
        }

        public int FacultyId { get; set; }
        public string FacultyName { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Specialty> Specialties { get; set; }
    }
}
