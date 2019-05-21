using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Otel_Rezervasyon
{
    public partial class _default : System.Web.UI.Page
    {     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Goster(object sender, EventArgs e)
        {
            //giriş tarihiçıkış tarihi kişi sayısı ve odasayısı bilgilerini rezervasyon.aspx sayfasına yolluyoruz.
            DateTime GirisTarih = DateTime.Parse(txtGirisTarih.Text);
            DateTime CikisTarih = DateTime.Parse(txtCikisTarih.Text);
            int OdaSayisi = (Convert.ToInt32(txtOda.Text));      
            int KisiSayisi = Convert.ToInt32(ddlKisi.SelectedValue);

            Response.Redirect(String.Format("rezervasyon.aspx?kisiSayisi={0}&girisTarih={1}&cikisTarih={2}&odaSayisi={3}", KisiSayisi, GirisTarih, CikisTarih, OdaSayisi));

        }

        public void ddlKisi_SelectedIndexChanged(object sender, EventArgs e)
        {
            //seçilen kişi sayısına göre min ve max oda sayılarını bulup textbox'a bunları veriyoruz.
            int KisiSayisi = (Convert.ToInt32(ddlKisi.SelectedValue));

            if (KisiSayisi == 1 || KisiSayisi == 2 || KisiSayisi == 3)
            {
                KisiSayisi = 1;
                txtOda.Attributes.Add("Min", KisiSayisi.ToString());
            }
            else if (KisiSayisi % 3 == 1 || KisiSayisi % 3 == 2)
            {
                KisiSayisi = (KisiSayisi / 3) + 1;
                txtOda.Attributes.Add("Min", KisiSayisi.ToString());
            }
            else if (KisiSayisi % 3 == 0)
            {
                KisiSayisi = KisiSayisi / 3;
                txtOda.Attributes.Add("Min", KisiSayisi.ToString());
            }
            txtOda.Attributes.Add("Max", ddlKisi.SelectedValue);
        }
    }
}