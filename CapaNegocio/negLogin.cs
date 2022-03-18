using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocios
{
    public class negLogin
    {
        public static entLogin Login(string usuario, string password)
        {
            return daoLogin.Login(usuario, password);
        }
    }
}
