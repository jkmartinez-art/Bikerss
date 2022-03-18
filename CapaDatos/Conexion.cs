using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace CapaDatos
{
    public class Conexion
    {
        //establesco las propiedades de la cadena de conexion para invocarlas desde el web.config
        public SqlConnection conectar()
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            cn.ConnectionString = "Data Source=LAPTOP-BNP5L6O4;Initial Catalog=BIKERS;User Id=jkmartinez;Password=Bogota2022;";
            return cn;
        }
    }
}
