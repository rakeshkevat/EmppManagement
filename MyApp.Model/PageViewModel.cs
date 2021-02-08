using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyApp.Model
{
    public class PageViewModel
    {
        public int PageID { get; set; }
        [Display(Name = "Page Name")]
        public string PageName { get; set; }
        [Display(Name = "Page Url")]
        public string PageUrl { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<System.DateTime> CreateOn { get; set; }
        public Nullable<System.DateTime> UpdateOn { get; set; }
    }
}
