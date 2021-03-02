using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class Currencies
    {
        public string id { get; set; }
        public string symbol { get; set; }
        public string description { get; set; }
        public int decimal_places { get; set; }
        public CurrencyConversions todolar { get; set; }
    }
}
