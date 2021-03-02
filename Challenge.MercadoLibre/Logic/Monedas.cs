using RestSharp;
using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.MercadoLibre.Logic
{
    public class Monedas : RestClientBase
    {
        public Monedas(string url) : base(url)
        {

        }

        /// <summary>
        /// Obtiene el listado de monedas utilizando la api de mercadolibre        
        /// </summary>
        /// <returns>Retorna un listado de monedas con sus respectivos datos y la conversion a dolar de la misma</returns>
        public List<Response.Currencies> List()
        {
            var request = new RestRequest("currencies/", Method.GET);
            IRestResponse<List<Response.Currencies>> response = restClient.Execute<List<Response.Currencies>>(request);

            if (response.IsSuccessful)
            {
                foreach (var item in response.Data)
                {
                    try
                    {
                        var convert = this.Convert(item.id, "USD");
                        item.todolar = convert;
                    } catch (Exception e)
                    {
                        item.todolar = null;
                    }
                }

                return response.Data;
            }
            else
                throw new Exception(response.ErrorMessage);
        }

        /// <summary>
        /// Obtiene los parametros de conversion entre dos monedas utilizando la api de mercadolibre        
        /// </summary>
        /// <param name="from">id de moneda correspondiente al pais de origen</param>
        /// <param name="to">id de moneda correspondiente al pais al cual se desea realizar la conversion</param>
        /// <returns>Retorna los datos para realizar la conversion de las monedas</returns>
        private Response.CurrencyConversions Convert(string from, string to)
        {
            var resource = string.Format("currency_conversions/search?from={0}&to={1}", from, to);
            var request = new RestRequest(resource, Method.GET);
            IRestResponse<Response.CurrencyConversions> response = restClient.Execute<Response.CurrencyConversions>(request);

            if (response.IsSuccessful)
            {
                return response.Data;
            }
            else
                throw new Exception(response.ErrorMessage);
        }
    }
}
