using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;


namespace CapaDatos
{
    public class daoTipoIden
    {
        public static List<entTipoIden> ListarTiposIdentificacion()
        {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entTipoIden> listaper = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("sp_lista_TipoIden", cnx);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                listaper = new List<entTipoIden>();
                while (dr.Read())
                {
                    entTipoIden p = new entTipoIden();
                    p.BksDescripcionTipIden = dr["BksDescripcionTipIden"].ToString();
                    p.BksIdTipIden = Convert.ToInt32(dr["BksIdTipIden"].ToString());
                    listaper.Add(p);
                }
            }
            catch (Exception ex)
            {
                listaper = null;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return listaper;
        }
    }
}
