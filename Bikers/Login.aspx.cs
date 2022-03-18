using System;
using System.Data;
using System.Drawing;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocios;
using CapaEntidades;
namespace Bikers
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txbusu.Text == "" || txbcontra.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Debe Ingresar el Usuario y Contraseña');</script>");
                }
                else
                {

                    if (txbusu.Text != "" && txbcontra.Text != "")
                    {

                        entLogin objUsuLogin = negLogin.Login(this.txbusu.Text, this.txbcontra.Text);
                        if (objUsuLogin == null)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Usuario o Contraseña Incorrecto o no Existe');</script>");
                        }
                        else
                        {
                            Session["usuario"] = objUsuLogin.UniIdLogin;
                            switch (objUsuLogin.UniTipUsuario)
                            {
                                case 2:
                                    Response.Redirect("ppalAdm.aspx");
                                    break;
                                case 3:
                                    Response.Redirect("ppalAdm.aspx");
                                    break;
                                case 4:
                                    Response.Redirect("ppalAdm.aspx");
                                    break;
                                default:
                                    Console.WriteLine("ppalAdm case");
                                    break;
                            }
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Debe Ingresar Las Credenciales');</script>");
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}