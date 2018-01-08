using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class CrearTareaIndi : System.Web.UI.Page
    {
        int idtareaactual;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                if (Session["Rol"] == null)
                {
                    btn.Enabled = false;
                    btnPublicar.Visible = false;
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    idtareaactual = 0;
                    cargarLista();
                    limpiar();
                   
                    
                }

            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            float pago = float.Parse(txtPago.Text);

            wsProject.WSProjecManager projectws = new wsProject.WSProjecManager();

           

            if (projectws.crearTareaInd(txtNombre.Text,txtResumen.Text,txtFechaIn.Text,int.Parse(txtDuracion.Text), int.Parse(txtCant.Text),pago,idusuarioactual))
            {
                lblM.Text = "Tarea creada en borrador";
                idtareaactual = projectws.getidTarea(txtNombre.Text, txtResumen.Text);
               
                btn.Enabled = true;
                btnPublicar.Visible = true;
                
            }
            else
            {
                lblM.Text = "Error crear tarea";
                
            }
           
        }

        public void limpiar()
        {
            txtNombre.Text = "";
            txtResumen.Text = "";
            txtFechaIn.Text = "";
            txtDuracion.Text = "";
            txtCant.Text = "";
            txtPago.Text = "";

        }





        protected void btnGuardar2_Click(object sender, EventArgs e)
        {
            wsProject.WSProjecManager projectws = new wsProject.WSProjecManager();

            idtareaactual = projectws.getidTarea(txtNombre.Text, txtResumen.Text);

            if (projectws.RegistrarConocimientoTarea(idtareaactual, int.Parse(ddlConocimientos.SelectedValue)))
            {
                Label3.Text = "Conocimiento Registrado a tarea";
            }
            else
            {
                Label3.Text = "Conocimiento ya registrado a tarea o error";

            }
            
            Label4.Text = "idtareaactual: "+ idtareaactual+" idconocimiento: "+ ddlConocimientos.SelectedValue;




        }


        protected void btnPublicar_Click(object sender, EventArgs e)
        {
            wsProject.WSProjecManager projectws = new wsProject.WSProjecManager();

            idtareaactual = projectws.getidTarea(txtNombre.Text, txtResumen.Text);

            if (projectws.situacionTarea(2,idtareaactual))
            {
                lblM.Text = "Tarea publicada";                                
                btnPublicar.Visible = false;
            }
            else
            {
                lblM.Text = "Tarea ya publicada o error";
            }


        }

        public void cargarLista()
        {
            ddlConocimientos.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
                        
            wsUsuario.conocimiento[] cont = usuariows.listaConocimientos();

            ListItem LU;

            if (cont != null)
            {
                for (int x = 0; x < cont.Length; x++)
                {
                    LU = new ListItem();
                    LU.Value = cont[x].idconocimiento.ToString();
                    LU.Text = cont[x].nombre;
                    ddlConocimientos.Items.Add(LU);
                }
            }


        }



    }
}