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
    
    public partial class Obcina
    {
        public Obcina()
        {
            this.Student = new HashSet<Student>();
            this.Student1 = new HashSet<Student>();
            this.Student2 = new HashSet<Student>();
        }
    
        public int idObcina { get; set; }
        public string imeObcine { get; set; }
    
        public virtual ICollection<Student> Student { get; set; }
        public virtual ICollection<Student> Student1 { get; set; }
        public virtual ICollection<Student> Student2 { get; set; }
    }
}
