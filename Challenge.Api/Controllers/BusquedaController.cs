using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Challenge.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BusquedaController : ControllerBase
    {
        private MercadoLibre.MercadoLibreService _mercadolibreService;

        public BusquedaController(MercadoLibre.MercadoLibreService mercadolibreService)
        {
            _mercadolibreService = mercadolibreService;
        }

        /// <summary>
        /// Este metodo obtiene el resultado de busqueda de la Api search de Mercado Libre
        /// </summary>
        /// <param name="id">termino que se desea buscar</param>
        /// <returns>Retorna el resultado de la busqueda</returns>
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            try
            {
                var resultado = _mercadolibreService.Busqueda.List(id);
                return Ok(resultado);
            }
            catch (Exception e)
            {
                return StatusCode(500, new { error = "Error al procesar la peticion a la api de Mercado Libre." });
            }
        }
    }
}
