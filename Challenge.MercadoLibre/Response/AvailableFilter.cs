using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class AvailableFilter
    {
        public string id { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public List<AvailableFilterValue> values { get; set; }
    }
}
