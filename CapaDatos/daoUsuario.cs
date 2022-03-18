using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
  public  class daoUsuario
    {
        public static List<entUsuario> CargarUsuarios()
        {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entUsuario> listaper = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("sp_CargarUsuarios", cnx);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                listaper = new List<entUsuario>();
                while (dr.Read())
                {
                    entUsuario p = new entUsuario();
                    p.BksIdUsu = Convert.ToInt32(dr["BksIdUsu"].ToString());
                    p.BksNombreCompleto = dr["BksNombreCompleto"].ToString();
                    p.BksCodigo = Convert.ToInt32(dr["BksCodigo"].ToString());
                    p.BksUsuario = dr["BksUsuario"].ToString();
                    p.BksDescripcionEst = dr["BksDescripcionEst"].ToString();

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

        public static int AgregarUsuario(entUsuario obj)
        {
            int indicador = 0;
            SqlCommand cmd = null;
            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("sp_agregarusuario", cnx);
                cmd.Parameters.AddWithValue("@BksPrimerNombre", obj.BksPrimerNombre);
                cmd.Parameters.AddWithValue("@BksSegundoNombre", obj.BksSegundoNombre);
                cmd.Parameters.AddWithValue("@BksPrimerApellido", obj.BksPrimerApellido);
                cmd.Parameters.AddWithValue("@BksSegundoApellido", obj.BksSegundoApellido);
                cmd.Parameters.AddWithValue("@BksTipIden", obj.BksTipIden);
                cmd.Parameters.AddWithValue("@BksIden", obj.BksIden);
                cmd.Parameters.AddWithValue("@BksCodigo", obj.BksCodigo);
                cmd.Parameters.AddWithValue("@BksUsuario", obj.BksUsuario);
                cmd.Parameters.AddWithValue("@BksContraseña", obj.BksContraseña);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;
            }
            catch (Exception ex)
            {
                throw ex;
                //indicador = 0;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return indicador;
        }
    }
}
