using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class EstadoPublicar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEstado.Text))
            {
                lblM.Text = "Llenar el campo de Nombre";
            }
            else
            {
                wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

                int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

                if(usuariows.publicarEstado(txtEstado.Text, idusuarioactual))
                {
                    txtEstado.Text = "";              
                    lblM.Text = "Estado publicado";
                }
                else
                {
                    lblM.Text = "Error al publicar";
                    txtEstado.Text = "";
                }

            }

        }
    }
}