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
    public class PaisesController : ControllerBase
    {
        private MercadoLibre.MercadoLibreService _mercadolibreService;

        public PaisesController(MercadoLibre.MercadoLibreService mercadolibreService)
        {
            _mercadolibreService = mercadolibreService;
        }

        /// <summary>
        /// Este metodo obtiene el listado de paises de ​API classified Locations de Mercado Libre
        /// </summary>
        /// <returns>Retorna un listado de paises</returns>
        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                var paises = _mercadolibreService.Paises.List();
                return Ok(paises);
            }
            catch (Exception e)
            {
                return StatusCode(500, new { error = "Error al procesar la peticion a la api de Mercado Libre." });
            }
        }

        /// <summary>
        /// Este metodo obtiene un pais por su id de  ​API classified Locations de Mercado Libre - Countries: (PAIS ID)
        /// </summary>
        /// <param name="id">id de pais. Ej: AR</param>
        /// <returns>Retorna un pais o retorna un codigo de error en caso de no corresponder el pais</returns>
        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            string[] unauthorized = { "BR", "CO" };
            if (id == "AR")
            {
                try
                {
                    var pais = _mercadolibreService.Paises.Get(id);
                    return Ok(pais);
                }
                catch (Exception e)
                {
                    return StatusCode(500, new { error = "Error al procesar la peticion a la api de Mercado Libre." });
                }
            }
            else if (unauthorized.Contains(id))
            {
                return StatusCode(401, new { error = "El codigo de pais no se encuentra autorizado." });
            }
            else
                return StatusCode(500, new { error = "El codigo de pais no corresponde a los codigo habilitados." });
        }
    }
}
