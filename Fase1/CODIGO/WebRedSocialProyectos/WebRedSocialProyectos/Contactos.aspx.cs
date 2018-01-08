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
            if (!IsPostBack)
            {
                if (Session["Rol"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    cargarListas();
                }

            }

        }

        public void cargarListas()
        {

            ddlUsuarios.Items.Clear();
            ddlContactos.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());


            wsUsuario.usuario[] users = usuariows.listaUsuario(idusuarioactual);
            wsUsuario.usuario[] contactos = usuariows.listaContactos(idusuarioactual);
            ListItem LU;

            for (int x = 0; x < users.Length ; x++)
            {
                
                LU = new ListItem();
                LU.Value = users[x].idusuario.ToString();
                LU.Text = users[x].nickname;
                ddlUsuarios.Items.Add(LU);
            }


            if(contactos != null )
            {
                for (int x = 0; x < contactos.Length; x++)
                {
                    ListItem LC = new ListItem(contactos[x].nickname.ToString(), contactos[x].idusuario.ToString());
                    ddlContactos.Items.Add(LC);
                }

            }
            


        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());


            if (usuariows.RegistrarContacto(idusuarioactual,int.Parse(ddlUsuarios.SelectedItem.Value) ) )
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