using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class Registra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarCuenta_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            
            try
            {
                if (string.IsNullOrWhiteSpace(txtNombre.Text))
                {
                    lblMensaje.Text = "llenar campos";
                }
                else if (string.IsNullOrWhiteSpace(txtApellido.Text))
                {
                    lblMensaje.Text = "llenar campos";
                }
                else if (string.IsNullOrWhiteSpace(txtNick.Text))
                {
                    lblMensaje.Text = "llenar campos";
                }
                else if (string.IsNullOrWhiteSpace(txtPassword.Text))
                {
                    lblMensaje.Text = "llenar campos";
                }
                else
                {
                    if (usuariows.RegistrarUsuario(txtNombre.Text, txtApellido.Text, txtNick.Text, txtPassword.Text,1))
                    { 
                    limpiarCampos();
                    lblMensaje.Text = "Usario registrado";
                    }
                    else
                    {
                        lblMensaje.Text = "Usario no registrado";
                    }                   
                }
            }
            catch
            {

            }

        }

        public void limpiarCampos()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNick.Text = "";
            txtPassword.Text = "";
        }
    }
}