//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TPOZdejPaZares
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vloge
    {
        public Vloge()
        {
            this.Student = new HashSet<Student>();
        }
    
        public int idVloge { get; set; }
        public string opisVloge { get; set; }
    
        public virtual ICollection<Student> Student { get; set; }
    }
}
