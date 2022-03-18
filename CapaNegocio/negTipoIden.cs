using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;


namespace CapaNegocio
{
    public class negTipoIden
    {
        public static List<entTipoIden> ListarTiposIdentificacion()
        {
            return daoTipoIden.ListarTiposIdentificacion();
        }
    }
}
