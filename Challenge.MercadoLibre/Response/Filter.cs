using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class Filter
    {
        public string id { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public List<FilterValue> values { get; set; }
    }
}
