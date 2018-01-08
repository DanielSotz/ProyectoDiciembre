using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class RegistroConocimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Rol"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    cargarLista();

                }

            }

        }

        public void cargarLista()
        {
            ddlConocimientos.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            
            wsUsuario.conocimiento[] cont = usuariows.listaConocimientos();


            if(cont != null)
            {
                for (int x = 0; x < cont.Length; x++)
                {
                    ListItem LI = new ListItem(cont[x].nombre.ToString(), cont[x].idconocimiento.ToString());
                    ddlConocimientos.Items.Add(LI);
                }

            }
                    


        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            if ( usuariows.RegistrarConocimiento(int.Parse(ddlConocimientos.SelectedValue),idusuarioactual,0,idusuarioactual) )
            {
                lblM.Text = "Conocimiento Registrado";
            }
            else
            {
                lblM.Text = "Error registrar conocimiento";
               
            }

        }
    }
}