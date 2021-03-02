using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class FilterValue
    {
        public string id { get; set; }
        public string name { get; set; }        
        public List<FilterValuePath> path_from_root { get; set; }
    }
}
