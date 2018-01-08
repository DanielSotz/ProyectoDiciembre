using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class TimeLine : System.Web.UI.Page
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
                    limpiar();
                    cargarListas();                    
                    estados();
                    cargarComent();                    
                }

            }

        }

        public void cargarListas()
        {
            ddlEstados.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.estado[] lestados = usuariows.listaEstadosTimeline(idusuarioactual);

            ListItem LU;
            if (lestados != null)
            {
                
                for (int x = 0; x < lestados.Length; x++)
                {
                    LU = new ListItem();
                    LU.Value = lestados[x].idestado.ToString();
                    LU.Text = lestados[x].texto;
                    ddlEstados.Items.Add(LU);
                }               
                

            }

        }

        public void cargarComent()
        {
            ddlComentarios.Items.Clear();

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.comentario[] lcomentarios = usuariows.listaComentario(int.Parse(ddlEstados.SelectedItem.Value));

            ListItem LU;
            if (lcomentarios != null)
            {

                for (int x = 0; x < lcomentarios.Length; x++)
                {
                    LU = new ListItem();
                    LU.Value = lcomentarios[x].idcomentario.ToString();
                    LU.Text = lcomentarios[x].texto;
                    ddlComentarios.Items.Add(LU);
                }                

            }

        }

        public void estados()
        {

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.estado[] lestados = usuariows.listaEstadosTimeline(idusuarioactual);

            if (lestados != null)
            {
                int numrow = lestados.Length;

                for (int j = 0; j < numrow; j++)
                {
                    TableRow r = new TableRow();
                    TableRow ru = new TableRow();

                    for (int i = 0; i < 2; i++)
                    {
                        if (i == 0)
                        {
                            TableCell c1 = new TableCell();
                            c1.Controls.Add(new LiteralControl(lestados[j].usuario));
                            c1.Font.Size = FontUnit.Medium;
                            r.Cells.Add(c1);

                        }
                        else
                        {
                            TableCell c1 = new TableCell();
                            c1.Controls.Add(new LiteralControl(lestados[j].texto.ToString()));
                            c1.Font.Bold = true;
                            r.Cells.Add(c1);
                            tbEstados.Rows.Add(r);

                            wsUsuario.comentario[] lcomentarios = usuariows.listaComentario(lestados[j].idestado);


                            if (lcomentarios != null)
                            {
                                for (int x = 0; x < lcomentarios.Length; x++)
                                {
                                    TableRow r2 = new TableRow();

                                    for (int y = 0; y < 2; y++)
                                    {
                                        if (y == 0)
                                        {
                                            TableCell n = new TableCell();
                                            n.Controls.Add(new LiteralControl(lcomentarios[x].usuario));
                                            n.HorizontalAlign = HorizontalAlign.Right;
                                            r2.Cells.Add(n);
                                        }
                                        else
                                        {
                                            TableCell n = new TableCell();
                                            n.Controls.Add(new LiteralControl(lcomentarios[x].texto.ToString()));
                                            r2.Cells.Add(n);
                                        }
                                    }

                                    tbEstados.Rows.Add(r2);

                                }

                            }


                        }
                    }

                    TableCell c = new TableCell();
                    c.Controls.Add(new LiteralControl(""));
                    c.ColumnSpan = 2;
                    ru.Cells.Add(c);
                    tbEstados.Rows.Add(ru);
                }


            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            string texto = txtComent.Text;


            if (usuariows.publicarComentario(texto, idusuarioactual, int.Parse(ddlEstados.SelectedItem.Value)))
            {
                estados();
            }
            else
            {
                lblM.Text = "Error al comentar";

            }
        }

        protected void btnDenunciarEstado_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            if (usuariows.denunciarEstado("si",int.Parse(ddlEstados.SelectedItem.Value)))
            {
                lblM2.Text = "Estado denunciado";
                estados();
                
            }
            else
            {
                lblM2.Text = "Error denuncia";
            }


        }

        protected void btnDenunciarComent_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();

            if (usuariows.denunciarComentario("si", int.Parse(ddlComentarios.SelectedItem.Value)))
            {
                lblM3.Text = "Comentario denunciado";
                estados();

            }
            else
            {
                lblM3.Text = "Error denuncia";
            }


        }

        protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarComent();
            estados();
        }

        public void limpiar()
        {
            txtComent.Text = "";
            lblM.Text = "";
            lblM2.Text = "";
            lblM3.Text = "";


        }

    }
}