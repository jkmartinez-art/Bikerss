using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daoLogin
    {

        public static entLogin Login(string usuario, string password)
        {
            entLogin obj = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("sp_Login", cnx);
                cmd.Parameters.AddWithValue("@BksUsuario", usuario);
                cmd.Parameters.AddWithValue("@BksContraseña", password);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                obj = new entLogin();
                dr.Read();
                obj.UniIdLogin = Convert.ToInt32(dr["BksIdLogin"].ToString());
                obj.UniTipUsuario = Convert.ToInt32(dr["BksTipUsuario"].ToString());
            }
            catch (Exception ex)
            {
                obj = null;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return obj;
        }
    }
}
