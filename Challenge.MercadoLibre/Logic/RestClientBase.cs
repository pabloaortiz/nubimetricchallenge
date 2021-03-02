using RestSharp;
using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Logic
{
    public class RestClientBase
    {
        protected RestClient restClient;
        public RestClientBase(string url)
        {
            restClient = new RestClient(url);
        }
    }
}
