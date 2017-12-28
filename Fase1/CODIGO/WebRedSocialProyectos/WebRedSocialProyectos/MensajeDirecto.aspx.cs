using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class MensajeDirecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarLista();
        }
        public void cargarLista()
        {
            ddlContactos.Items.Clear();            

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            wsUsuario.usuario[] contactos = usuariows.listaContactos(idusuarioactual);


            for (int x = 0; x < contactos.Length; x++)
            {
                ListItem LI = new ListItem(contactos[x].nickname.ToString(), contactos[x].idusuario.ToString());
                ddlContactos.Items.Add(LI);
            }


        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            int idregistro = usuariows.getidRegistro(idusuarioactual, int.Parse(ddlContactos.SelectedValue));

            if (usuariows.enviarMensaje(txtMensaje.Text,idregistro))
            {
                lblM.Text = "Mensaje enviado";
                txtMensaje.Text = "";              
            }
            else
            {
                lblM.Text = "Error enviar mensaje";
                txtMensaje.Text = "";
            }
        }
    }
}