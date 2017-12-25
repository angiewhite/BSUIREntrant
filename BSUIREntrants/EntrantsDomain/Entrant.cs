using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace EntrantsDomain
{
    public class Entrant
    {
        [HiddenInput(DisplayValue = false)]
        public int EntrantID { get; set; }
        [Required(ErrorMessage = "Enter First Name")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Enter Last Name")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "Enter Father's Name")]
        [Display(Name = "Father's Name")]
        public string FatherName { get; set; }
        [DataType(DataType.Date)]
        [Display(Name = "Date of Birth")]
        public DateTime BirthDate { get; set; }
        [Required(ErrorMessage = "Enter GPA")]
        [Range(0.01, 10.0, ErrorMessage = "Please enter a valid GPA")]
        public decimal GPA { get; set; }
        [Required(ErrorMessage = "Enter Town")]
        public string Town { get; set; }
        public string Address { get; set; }
        [Required(ErrorMessage = "Enter Phone Number")]
        [RegularExpression(@"\+375\d{9}\s*", ErrorMessage = "Enter valid phone number")]
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }
        public string School { get; set; }
        [DataType(DataType.MultilineText)]
        public string Biography { get; set; }
    }
}
