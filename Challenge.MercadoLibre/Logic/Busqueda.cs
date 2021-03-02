using RestSharp;
using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Logic
{
    public class Busqueda : RestClientBase
    {
        public Busqueda(string url) : base(url)
        {

        }

        /// <summary>
        /// Este metodo obtiene el resultado de la busqueda realizada en mercado libre utilizando la api de mercadolibre        
        /// </summary>
        /// <param name="filter">el termino a buscar en mercado libre</param>
        /// <returns>Retorna el resultado de busqueda de mercado libre</returns>
        public Response.SearchResult List(string filter)
        {
            var resource = string.Format("sites/MLA/search?q={0}", filter);
            var request = new RestRequest(resource, Method.GET);
            IRestResponse<Response.SearchResult> response = restClient.Execute<Response.SearchResult>(request);

            if (response.IsSuccessful)
            {
                return response.Data;
            }
            else
                throw new Exception(response.ErrorMessage);
        }
    }
}
