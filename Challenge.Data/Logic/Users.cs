using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Challenge.Data.Logic
{
    public class Users : BaseDbContext
    {
        public Users(Data.PrincipalContext context) : base(context)
        {

        }

        /// <summary>
        /// Este metodo obtiene el listado de usuarios de la base de datos
        /// </summary>
        /// <returns>Retorna un listado de usuarios con sus respectivos datos</returns>
        public List<Entities.User> List()
        {
            return _context.User.ToList();
        }

        /// <summary>
        /// Este metodo obtiene un usuario especifico de la base de datos        
        /// </summary>
        /// <param name="id">id de usuario</param>
        /// <returns>Retorna un usuario con sus respectivos datos</returns>
        public Entities.User Get(int id)
        {
            return _context.User.FirstOrDefault(u => u.Id == id);
        }

        /// <summary>
        /// Este metodo agregar un nuevo usuario a la base de datos        
        /// </summary>
        /// <param name="user">datos del usuario</param>
        /// <returns>Retorna el usuario creado con sus respectivos datos</returns>
        public Entities.User Create(Entities.User user)
        {
            if (Validate(user))
            {
                _context.User.Add(user);
                _context.SaveChanges();
                return user;
            }
            else
                return null;
        }

        /// <summary>
        /// Este metodo modifica los datos del usuario en la base de datos        
        /// </summary>
        /// <param name="id">id del usuario que se desea modificar</param>
        /// <param name="user">nuevos datos del usuario</param>
        /// <returns>Retorna el usuario modificado con sus respectivos datos</returns>
        public Entities.User Update(int id, Entities.User data)
        {
            if (Validate(data))
            {
                Entities.User user = _context.User.FirstOrDefault(u => u.Id == id);
                user.Nombre = data.Nombre;
                user.Apellido = data.Apellido;
                user.Email = data.Email;
                user.Password = data.Password;
                _context.SaveChanges();
                return user;
            }
            return null;
        }

        /// <summary>
        /// Este metodo elimina un usuario de la base de datos        
        /// </summary>
        /// <param name="id">id del usuario que se desea eliminar</param>
        /// <returns>Retorna el usuario modificado con sus respectivos datos</returns>
        public void Delete(int id)
        {
            Entities.User user = _context.User.FirstOrDefault(u => u.Id == id);
            _context.User.Remove(user);
            _context.SaveChanges();
        }

        public bool Validate(Entities.User data)
        {
            //Aqui deberia ir el codigo para realizar las validaciones correspondientes
            return true;
        }
    }
}
