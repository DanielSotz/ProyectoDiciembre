using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class CrearAsociacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if((Session["Rol"]).Equals("avanzado"))
                {
                    

                }
                else if ((Session["Rol"]).Equals("inicial") | (Session["Rol"]).Equals("intermedio") | (Session["Rol"]).Equals("administrador"))
                {                    
                    Response.Redirect("~/Perfil.aspx");
                }
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            if (usuariows.crearAsociacion(txtNombre.Text,txtResumen.Text,idusuarioactual))
            {
                lblM.Text = "Asociacion creada";
                txtNombre.Text = "";
                txtResumen.Text = "";
            }
            else
            {
                lblM.Text = "Error crear asociacion";
                txtNombre.Text = "";
                txtResumen.Text = "";

            }

        }
    }
}