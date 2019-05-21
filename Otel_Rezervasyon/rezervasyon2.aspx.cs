using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Otel_Rezervasyon
{
    public partial class rezervasyon2 : System.Web.UI.Page
    {
        OtelRezervasyonEntities _db;

        public rezervasyon2()
        {
            _db = new OtelRezervasyonEntities();
        }

        public TextBox[] txtad = new TextBox[30];
        public TextBox[] txtsoyad = new TextBox[30];
        public TextBox[] txttc = new TextBox[30];

        string degerad;
        string degersoyad;
        string degertc;
        int a;
        int ks;
        int hizmet;
        int ucret;
        DateTime giris, cikis;
        int sonRezervasyonID;
        protected void Page_Load(object sender, EventArgs e)
        {
            a = int.Parse(Request.QueryString["seciliKisi"]);

            hizmet = int.Parse(Request.QueryString["hizmetidsi"]);
            ucret = int.Parse(Request.QueryString["ucret"]);
            giris = DateTime.Parse(Request.QueryString["gt"]);
            cikis = DateTime.Parse(Request.QueryString["ct"]);
            Ekle();
        }
        //seçilen kişisayısı kadar ekrana ad soyad tc alanı açıyoruz.
        public void Ekle()
        {
            Panel1.Controls.Clear();
            Panel2.Controls.Clear();
            Panel3.Controls.Clear();
            for (int i = 0; i < a; i++)
            {
                Label ad = new Label();
                ad.ID = "lblAd" + i.ToString();
                ad.Text = "Ad:";
                txtad[i] = new TextBox();
                txtad[i].ID = "tbad_" + i.ToString();
                Panel1.Controls.Add(ad);
                Panel1.Controls.Add(txtad[i]);
                Literal l = new Literal();
                l.Text = "<br/>";
                Panel1.Controls.Add(l);

                Label soyad = new Label();
                soyad.ID = "lblSoyAd" + i.ToString();
                soyad.Text = "Soyad";
                txtsoyad[i] = new TextBox();
                txtsoyad[i].ID = "tbsoyad_" + i.ToString();
                Panel2.Controls.Add(soyad);
                Panel2.Controls.Add(txtsoyad[i]);
                Literal l2 = new Literal();
                l2.Text = "<br/>";
                Panel2.Controls.Add(l2);

                Label tc = new Label();
                tc.ID = "lblTc" + i.ToString();
                tc.Text = "TC:";
                txttc[i] = new TextBox();
                txttc[i].ID = "tbtc_" + i.ToString();
                Panel3.Controls.Add(tc);
                Panel3.Controls.Add(txttc[i]);
                Literal l3 = new Literal();
                l3.Text = "<br/>";
                Panel3.Controls.Add(l3);
            }
        }

        //veritabanına kaydetme yapan buton.
        protected void vtKaydet_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < a; i++)
            {
                degerad = (txtad[i]).Text;
                degersoyad = (txtsoyad[i]).Text;
                degertc = (txttc[i]).Text;

                Misafir misafir = new Misafir();
                misafir.Ad = degerad;
                misafir.Soyad = degersoyad;
                misafir.Tc = degertc;
                _db.Misafir.Add(misafir);
                _db.SaveChanges();

              
            }
            RezervasyonTablosunaKaydet();
            RezervasyonDetayTablosunaKayedet();

        }

        public void RezervasyonDetayTablosunaKayedet()
        {        
            foreach (var item in ListeDoldur.odaIDListesi)
            {
                RezervasyonDetay detay = new RezervasyonDetay();
                detay.RezervasyonID = sonRezervasyonID;
                detay.OdaID = item;
                detay.HizmetID = hizmet;
                detay.ToplamFiyat = ucret + 100;
                _db.RezervasyonDetays.Add(detay);
                _db.SaveChanges();
            }

        }
        public void RezervasyonTablosunaKaydet()
        {
            Rezervasyon rezervasyon = new Rezervasyon();
            rezervasyon.MusteriID = 1;
            rezervasyon.CikisTarih = cikis;
            rezervasyon.GirisTarih = giris;
            _db.Rezervasyon.Add(rezervasyon);
            _db.SaveChanges();
            sonRezervasyonID = rezervasyon.ID;

        }
    }
}