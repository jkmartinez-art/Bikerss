using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class entLogin
    {

        public int UniIdLogin { get; set; }
        public int UniEstadoUsu { get; set; }
        public int UniIdUsu { get; set; }
        public string UniUsuario { get; set; }
        public string UniContraseña { get; set; }
        public DateTime UniFchCreacionLogin { get; set; }
        public DateTime UniFchModificacionLogin { get; set; }
        public int UniTipUsuario { get; set; }

    }
}
