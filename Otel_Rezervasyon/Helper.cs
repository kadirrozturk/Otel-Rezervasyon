using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Otel_Rezervasyon
{
    public class Helper
    {
        public static SqlDataReader SqlDenVeriGetir(string sorgu, SqlConnection cnn)
        {
            KontrolluBaglantiAc(cnn);
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            return cmd.ExecuteReader();
        }
        public static void KontrolluBaglantiAc(SqlConnection cnn)
        {
            if (cnn.State == ConnectionState.Closed)
            {
                cnn.Open();
            }
        }
    }
}