//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Otel_Rezervasyon
{
    using System;
    using System.Collections.Generic;
    
    public partial class RezervasyonOdaMisafir
    {
        public int RezervasyonID { get; set; }
        public int OdaID { get; set; }
        public int MisafirID { get; set; }
    
        public virtual Misafir Misafir { get; set; }
        public virtual Oda Oda { get; set; }
        public virtual Rezervasyon Rezervasyon { get; set; }
    }
}
