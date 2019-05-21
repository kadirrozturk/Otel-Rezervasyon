using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Otel_Rezervasyon
{
    public class ListeDoldur
    {
        public static List<int> odaIDListesi = new List<int>();

        public static void Doldur(SqlDataReader resultset)
        {
            odaIDListesi.Add(Convert.ToInt32(resultset[0]));
        }
    }
}