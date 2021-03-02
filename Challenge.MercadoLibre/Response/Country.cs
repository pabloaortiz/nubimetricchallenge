using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class Country
    {
        public string id { get; set; }
        public string name { get; set; }
        public string locale { get; set; }
        public string currency_id { get; set; }
        public string decimal_separator { get; set; }
        public string thousands_separator { get; set; }
        public string time_zone { get; set; }
        public GeoInformation geo_information { get; set; }
        public List<State> states { get; set; }
    }
}
