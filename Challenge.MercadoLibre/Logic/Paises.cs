using RestSharp;
using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Logic
{
    public class Paises : RestClientBase
    {
        public Paises(string url) : base(url)
        {

        }

        /// <summary>
        /// Este metodo obtiene el listado de paises utilizando la api de mercadolibre        
        /// </summary>
        /// <returns>Retorna un listado de paises con sus respectivos datos</returns>
        public List<Response.Countries> List()
        {
            var request = new RestRequest("classified_locations/countries", Method.GET);
            IRestResponse<List<Response.Countries>> response = restClient.Execute<List<Response.Countries>>(request);

            if (response.IsSuccessful)
            {
                return response.Data;
            }
            else
                throw new Exception(response.ErrorMessage);
        }

        /// <summary>
        /// Este metodo obtiene el un paises en especifico utilizando la api de mercadolibre
        /// </summary>
        /// <param name="id">id de pais. Ej: AR</param>
        /// <returns>Retorna el pais con todos su datos</returns>
        public Response.Country Get(string id)
        {
            var resource = string.Format("classified_locations/countries/{0}", id);
            var request = new RestRequest(resource, Method.GET);
            IRestResponse<Response.Country> response = restClient.Execute<Response.Country>(request);

            if (response.IsSuccessful)
            {
                return response.Data;
            }
            else
                throw new Exception(response.ErrorMessage);
        }
    }
}
