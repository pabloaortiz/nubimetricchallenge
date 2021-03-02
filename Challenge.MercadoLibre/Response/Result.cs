using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class Result
    {
        public string id { get; set; }
        public string site_id { get; set; }
        public string title { get; set; }
        public Seller seller { get; set; }
        public string price { get; set; }
        public string permalink { get; set; }
    }
}
