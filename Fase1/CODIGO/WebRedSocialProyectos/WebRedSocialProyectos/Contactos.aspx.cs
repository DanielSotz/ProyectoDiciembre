using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class Contactos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarListas();

        }

        public void cargarListas()
        {
            ddlUsuarios.Items.Clear();
            ddlContactos.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.usuario[] users = usuariows.listaUsuario(idusuarioactual);
            wsUsuario.usuario[] contactos = usuariows.listaContactos(idusuarioactual);


            for (int x = 0; x < users.Length ; x++)
            {
                ListItem LI = new ListItem(users[x].nickname.ToString(), users[x].idusuario.ToString());
                ddlUsuarios.Items.Add(LI);
            }

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

            if (usuariows.RegistrarContacto(idusuarioactual, int.Parse(ddlUsuarios.SelectedValue)))
            {
                lblM.Text = "Usuario agregado a contacto";
                cargarListas();
            }
            else
            {
                lblM.Text = "Usuario ya en contactos";
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            if (usuariows.EliminarContacto(idusuarioactual, int.Parse(ddlContactos.SelectedValue)))
            {
                lbl2.Text = "Usuario eliminado de contacto";
                cargarListas();
            }
            else
            {
                lbl2.Text = "Usuario no esta en contactos";
            }

        }
    }
}