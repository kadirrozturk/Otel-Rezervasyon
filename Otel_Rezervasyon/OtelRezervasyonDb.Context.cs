﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class OtelRezervasyonEntities : DbContext
    {
        public OtelRezervasyonEntities()
            : base("name=OtelRezervasyonEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Hizmet> Hizmet { get; set; }
        public virtual DbSet<Iletisim> Iletisim { get; set; }
        public virtual DbSet<Misafir> Misafir { get; set; }
        public virtual DbSet<Musteri> Musteri { get; set; }
        public virtual DbSet<Oda> Oda { get; set; }
        public virtual DbSet<Rezervasyon> Rezervasyon { get; set; }
        public virtual DbSet<RezervasyonOdaMisafir> RezervasyonOdaMisafir { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<RezervasyonDetay> RezervasyonDetays { get; set; }
    }
}
