using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyApp.Model
{
   public class RoleViewModel
    {
        public int RoleID { get; set; }
        [Display(Name = "Role")]
        public string RoleName { get; set; }
        [Display(Name = "Descruption")]
        public string RoleDescruption { get; set; }
        [Display(Name = "Active/Deactive")]
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
    }
}
