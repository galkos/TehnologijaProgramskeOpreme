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
    
    public partial class PredmetStudijskegaPrograma
    {
        public PredmetStudijskegaPrograma()
        {
            this.IzvedbaPredmeta = new HashSet<IzvedbaPredmeta>();
        }
    
        public int SestavniDelPred_idSestavniDelPred { get; set; }
        public int Letnik_idLetnik { get; set; }
        public int StudijskiProgram_idStudijskiProgram1 { get; set; }
        public int Predmet_idPredmet1 { get; set; }
        public int IdPredmetStudijskegaPrograma { get; set; }
    
        public virtual ICollection<IzvedbaPredmeta> IzvedbaPredmeta { get; set; }
        public virtual Letnik Letnik { get; set; }
        public virtual Predmet Predmet { get; set; }
        public virtual StudijskiProgram StudijskiProgram { get; set; }
        public virtual SestavniDelPred SestavniDelPred { get; set; }
    }
}
