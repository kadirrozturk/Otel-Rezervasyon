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
    
    public partial class Rezervasyon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Rezervasyon()
        {
            this.RezervasyonOdaMisafir = new HashSet<RezervasyonOdaMisafir>();
            this.RezervasyonDetays = new HashSet<RezervasyonDetay>();
        }
    
        public int ID { get; set; }
        public Nullable<int> MusteriID { get; set; }
        public Nullable<System.DateTime> GirisTarih { get; set; }
        public Nullable<System.DateTime> CikisTarih { get; set; }
    
        public virtual Musteri Musteri { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RezervasyonOdaMisafir> RezervasyonOdaMisafir { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RezervasyonDetay> RezervasyonDetays { get; set; }
    }
}
