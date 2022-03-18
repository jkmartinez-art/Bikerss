using System;
using System.Data;
using System.Drawing;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaEntidades;

namespace Bikers
{
    public partial class ppalAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    this.pnlGeneralUsuarios.Visible = false;
                    this.CargarCombos();

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }
        public void CargarCombos()
        {
            try
            {

                //carga el combo de Tipos De Identificacion
                List<entTipoIden> listaTipoIden = negTipoIden.ListarTiposIdentificacion();
                foreach (entTipoIden obj in listaTipoIden)
                {
                    ListItem item = new ListItem(obj.BksDescripcionTipIden, obj.BksIdTipIden.ToString());
                    ddlTipoIdentificacion.Items.Add(item);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        protected void BtnUsuarios_Click(object sender, EventArgs e)
        {
            try
            {
                this.pnlAdmin.Visible = false;
                this.pnlGeneralUsuarios.Visible = true;
                this.grvlista_Usuarios.DataSource = negUsuario.CargarUsuarios();
                if (grvlista_Usuarios.DataSource == null)
                {
                    grvlista_Usuarios.DataSource = string.Empty;
                }
                else
                {
                    grvlista_Usuarios.DataBind();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            try
            {
                this.pnlGeneralUsuarios.Visible = true;
                this.pnlRegistroUsu.Visible = false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                if ((txtPrimNom.Text != "" || txtSegunNom.Text != "") && (txtPrimApell.Text != "" || txtSegunApell.Text != "") && ddlTipoIdentificacion.SelectedValue != "" && txtIdentificacion.Text != "" && txtUsuario.Text != "" && txtcontrasena.Text != "" && txtcodigo.Text != "")
                {
                    entUsuario obj = new entUsuario();
                    obj.BksPrimerNombre = txtPrimNom.Text;
                    obj.BksSegundoNombre = txtSegunNom.Text;
                    obj.BksPrimerApellido = txtPrimApell.Text;
                    obj.BksSegundoApellido = txtSegunApell.Text;
                    obj.BksTipIden = Convert.ToInt32(ddlTipoIdentificacion.SelectedValue);
                    obj.BksIden = txtIdentificacion.Text;
                    obj.BksCodigo = Convert.ToInt32(txtcodigo.Text);
                    obj.BksUsuario = txtUsuario.Text;
                    obj.BksContraseña = txtcontrasena.Text;
                    if (negUsuario.AgregarUsuario(obj) == 1)
                    {
                        string script = @"<script type='text/javascript'>alert('Se Agrego Correctamente el Usuario');</script>";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                        Response.Redirect("ppalAdm.aspx");
                    }
                    else
                    {
                        string script = @"<script type='text/javascript'>alert('No se pudo guardar, verifique los datos');</script>";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                    }
                }
                else
                {
                    string script = @"<script type='text/javascript'>alert('Ingrese Todos Los Datos');</script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }



        protected void btnDocumentos_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                this.pnlRegistroUsu.Visible = true;
                this.pnlGeneralUsuarios.Visible = false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}