using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
   public  class negUsuario
    {
        public static List<entUsuario> CargarUsuarios()
        {
            return daoUsuario.CargarUsuarios();
        }
        public static int AgregarUsuario(entUsuario obj)
        {
            return daoUsuario.AgregarUsuario(obj);
        }
    }
}
