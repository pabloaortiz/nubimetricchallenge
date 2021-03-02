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
    public class UsuariosController : ControllerBase
    {
        private Data.DataService _data;

        public UsuariosController(Data.DataService data)
        {
            _data = data;
        }

        /// <summary>
        /// Este metodo obtiene el listado de usuarios de la base de datos
        /// </summary>
        /// <returns>Retorna un listado de usuarios con sus respectivos datos</returns>        
        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                var users = _data.Users.List();
                return Ok(users);
            } catch (Exception e)
            {
                return StatusCode(500, new { error = "Error al obtener los usuarios de la base de datos" });
            }
        }

        /// <summary>
        /// Este metodo obtiene un usuario especifico de la base de datos        
        /// </summary>
        /// <param name="id">id de usuario</param>
        /// <returns>Retorna un usuario con sus respectivos datos</returns>
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            try
            {
                var user = _data.Users.Get(id);
                return Ok(user);
            }
            catch (Exception e)
            {
                return StatusCode(500, new { error = "Error al obtener el usuario de la base de datos" });
            }
        }

        /// <summary>
        /// Este metodo agregar un nuevo usuario a la base de datos        
        /// </summary>
        /// <param name="user">datos del usuario</param>
        /// <returns>Retorna el usuario creado con sus respectivos datos</returns>
        [HttpPost]
        public IActionResult Post(Data.Entities.User user)
        {
            var usuario = _data.Users.Create(user);
            if (usuario != null)
                return Ok(usuario);
            else
                return StatusCode(500, new { error = "Error al crear el usuario en la base de datos" });
        }

        /// <summary>
        /// Este metodo modifica los datos del usuario en la base de datos        
        /// </summary>
        /// <param name="id">id del usuario que se desea modificar</param>
        /// <param name="user">nuevos datos del usuario</param>
        /// <returns>Retorna el usuario modificado con sus respectivos datos</returns>
        [HttpPut("{id}")]
        public IActionResult Put(int id, Data.Entities.User user)
        {
            var usuario = _data.Users.Update(id, user);
            if (usuario != null)
                return Ok(usuario);
            else
                return StatusCode(500, new { error = "Error al modificar el usuario en la base de datos" });
        }

        /// <summary>
        /// Este metodo elimina un usuario de la base de datos        
        /// </summary>
        /// <param name="id">id del usuario que se desea eliminar</param>
        /// <returns>Retorna el usuario modificado con sus respectivos datos</returns>
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _data.Users.Delete(id);
            return Ok();
        }
    }
}
