using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Response
{
    public class Paging
    {
        public int total { get; set; }
        public int primary_results { get; set; }
        public int offset { get; set; }
        public int limit { get; set; }
    }
}
