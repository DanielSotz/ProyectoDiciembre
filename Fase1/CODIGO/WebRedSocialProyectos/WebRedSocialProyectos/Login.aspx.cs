using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Rol"] = null;
            Session["Nickname"] = null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            if (usuariows.ValidarUsuario(txtNickname.Text, txtPassword.Text))
            {
                Session["Rol"] = usuariows.getRol(txtNickname.Text);

                if ((Session["Rol"]).Equals("administrador")) //En caso que la varibale de sesion exista la imprime
                {
                    Session["Nickname"] = txtNickname.Text;
                    lblTemp.Text = "administrador";
                   
                }
                else if ((Session["Rol"]).Equals("inicial") | (Session["Rol"]).Equals("intermedio") | (Session["Rol"]).Equals("avanzado"))
                {                    
                    Session["Nickname"] = txtNickname.Text;
                    Response.Redirect("~/TimeLine.aspx");
                }
            }
            else{
                lblTemp.Text = "usuario y/o contraseña incorrecta";
                txtNickname.Text = "";
                txtPassword.Text = "";
            }

        }
    }
}