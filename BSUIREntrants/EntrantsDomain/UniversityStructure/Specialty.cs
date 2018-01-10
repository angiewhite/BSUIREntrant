using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsDomain.UniversityStructure
{
    public class Specialty
    {
        public Specialty()
        {
            Subjects = new HashSet<Subject>();
        }

        public int SpecialtyId { get; set; }
        public string SpecialtyName { get; set; }
        public string Description { get; set; }
        public int FacultyId { get; set; }

        public virtual ICollection<Subject> Subjects { get; set; }
    }
}
