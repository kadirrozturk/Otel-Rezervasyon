using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Otel_Rezervasyon
{
    public partial class rezervasyon : System.Web.UI.Page
    {
        OtelRezervasyonEntities _db;

        public rezervasyon()
        {
            _db = new OtelRezervasyonEntities();
        }

        int ks;
        int Ucret;
        int hizmetId;
        DateTime girisTarihi;
        DateTime cikisiTarihi;

        protected void Page_Load(object sender, EventArgs e)
        {
            //hizmet tipi seçme kısmı
            if (!IsPostBack)
            {
                var hizmetSorgu = _db.Hizmet
                    .Select(x => new
                    {
                        x.ID,
                        x.HizmetAdi,
                        x.Ucret
                    });
                var hizmetSonuc = hizmetSorgu.ToList();
                ddlHizmet.DataSource = hizmetSonuc;
                ddlHizmet.DataTextField = "HizmetAdi";
                ddlHizmet.DataValueField = "Ucret";
                ddlHizmet.DataBind();

            }
            //seçilen hizmet tipinin ID'sini bir değişkene atama.

            Ucret = Convert.ToInt32(ddlHizmet.SelectedItem.Value);

            var hizmetUcret = (from p in _db.Hizmet
                            where p.Ucret == Ucret
                            select p.ID).ToList();
            hizmetId = Convert.ToInt32(hizmetUcret[0]);
            //default sayfasından gelen verilerin karşılanması-tutulması kısmı.
            girisTarihi = DateTime.Parse(Request.QueryString["girisTarih"]);
            cikisiTarihi = DateTime.Parse(Request.QueryString["cikisTarih"]);
            int odaSayisi = Convert.ToInt32(Request.QueryString["odaSayisi"]);


            //defaulttan gelen verilere göre giriş çıkış tarihlerinin kıyasının yapılıp boş odaların çekilmesi ve repeater'a basılması kısmı.
            var odaSorgu = (from o in _db.Oda
                            where !(from r in _db.Rezervasyon
                                    join rd in _db.RezervasyonDetays on r.ID equals rd.RezervasyonID
                                    where r.GirisTarih >= girisTarihi && r.CikisTarih <= cikisiTarihi
                                    select rd.OdaID).Contains(o.ID)
                            select new { ID = o.ID, MaxKapasite = o.MaxKapasite, OdaNo = o.OdaNo, Fiyat = o.Fiyat }).ToList().Take(odaSayisi);
            Repeater1.DataSource = odaSorgu;
            Repeater1.DataBind();

            //repeater'a gelen odaların ID'lerinin tutulması kısmı.
            ListeDoldur.odaIDListesi.Clear();
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                Label OdaNoLabel = (Label)Repeater1.Items[i].FindControl("lblOdaNo");
                int OdaNo = Convert.ToInt32(OdaNoLabel.Text);       
                var odaNoSorgu = (from o in _db.Oda
                                  where o.OdaNo == OdaNo
                                  select o.ID).ToList();
                int id = Convert.ToInt32(odaNoSorgu[0]);
                ListeDoldur.odaIDListesi.Add(id);
            }

            //repeater içindeki elemana ulaşıp Ucreti yazdırma kısmı.
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                Label UcretDetay = (Label)Repeater1.Items[i].FindControl("Label3");
                UcretDetay.Text = (Ucret + 100).ToString();
            }

        }

        //fazlalık.
        protected void btnDevam_Click(object sender, EventArgs e)
        {
            ks = Convert.ToInt32(Request.QueryString["kisiSayisi"]);
            Response.Redirect("rezervasyon2.aspx?seciliKisi=" + ks);
        }
        //rezervasyon2 sayfasına yönlendirme yapan buton.
        protected void btnDevamm_Click(object sender, EventArgs e)
        {
            //rezervasyon2'ye veri aktarma.
            ks = Convert.ToInt32(Request.QueryString["kisiSayisi"]);
            //Response.Redirect("rezervasyon2.aspx?seciliKisi=" + ks);
            Response.Redirect(String.Format("rezervasyon2.aspx?seciliKisi={0}&hizmetidsi={1}&ucret={2}&gt={3}&ct={4}", ks, hizmetId, Ucret, girisTarihi, cikisiTarihi));
        }
    }
}