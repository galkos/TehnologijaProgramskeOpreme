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
    
    public partial class StudijskiProgram
    {
        public StudijskiProgram()
        {
            this.PredmetStudijskegaPrograma = new HashSet<PredmetStudijskegaPrograma>();
            this.Vpis = new HashSet<Vpis>();
        }
    
        public int idStudijskiProgram { get; set; }
        public string naziv { get; set; }
        public Nullable<int> sifraEVS { get; set; }
        public string sifraKratka { get; set; }
        public Nullable<int> stSemestrov { get; set; }
        public Nullable<int> StudijskiProgram_idStopnjaStudija { get; set; }
    
        public virtual ICollection<PredmetStudijskegaPrograma> PredmetStudijskegaPrograma { get; set; }
        public virtual stopnjaStudija stopnjaStudija { get; set; }
        public virtual ICollection<Vpis> Vpis { get; set; }
    }
}
