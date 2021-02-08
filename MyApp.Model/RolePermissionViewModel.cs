using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyApp.Model
{
    public class RolePermissionViewModel
    {
        public int RolePermissingID { get; set; }
        [Display(Name = "Role")]
        public int RoleID { get; set; }
        [Display(Name = "Page Name")]
        public Nullable<int> PageID { get; set; }
        public string RoleName { get; set; }
        public string PageName { get; set; }
    
    }
}
 