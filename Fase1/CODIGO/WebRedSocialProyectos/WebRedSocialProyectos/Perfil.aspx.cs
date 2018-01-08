using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRedSocialProyectos
{
    public partial class Perfil : System.Web.UI.Page
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
                    inicio();
                    habilidades();
                    estados();
                    cargar();

                }            

            }

        }

        public void inicio()
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.conocimiento[] lconocimientosp = usuariows.listaConocimientosPerfil(idusuarioactual);

            if ( lconocimientosp != null)
            {
                int numrow = lconocimientosp.Length;

                for (int j = -1; j < numrow; j++)
                {
                    if (j == -1)
                    {
                        TableRow r = new TableRow();

                        for (int i = 0; i < 3; i++)
                        {
                            if (i == 0)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl("HABILIDAD"));
                                r.Cells.Add(c);
                            }
                            else if (i == 1)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl("CONOCIMIENTO"));
                                r.Cells.Add(c);
                            }
                            else
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl("KARMA"));
                                r.Cells.Add(c);
                            }
                        }
                        Table1.Rows.Add(r);
                    }
                    else
                    {
                        TableRow r = new TableRow();

                        for (int i = 0; i < 3; i++)
                        {
                            if (i == 0)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(lconocimientosp[j].habilidad.ToString()));
                                r.Cells.Add(c);
                            }
                            else if (i == 1)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(lconocimientosp[j].nombre.ToString()));
                                r.Cells.Add(c);
                            }
                            else
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(lconocimientosp[j].karma.ToString()));
                                r.Cells.Add(c);
                            }
                        }
                        Table1.Rows.Add(r);
                    }                    
                }
            }
            

            for (int j = 0; j < 2; j++)
            {
                TableRow r = new TableRow();
                for (int i = 0; i < 4; i++)
                {
                    if(i<2)
                    {
                    TableCell c = new TableCell();
                    
                    c.Controls.Add(new LiteralControl("cell " + j.ToString() + ", row" + i.ToString()));
                        c.Font.Size = FontUnit.Medium;
                    r.Cells.Add(c);
                    }
                    else
                    {
                        TableCell c = new TableCell();
                        c.HorizontalAlign = HorizontalAlign.Right;
                        c.Controls.Add(new LiteralControl("cell " + j.ToString() + ", row" + i.ToString()));
                        r.Cells.Add(c);

                    }

                    
                }
                Table2.Rows.Add(r);
            }

        }

        public void habilidades()
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            int karma = usuariows.TotalKarma(idusuarioactual);

            wsUsuario.habilidad[] lhabilidadesp = usuariows.listaHabilidadesPerfil(idusuarioactual);

            if (lhabilidadesp != null)
            {
                int numrow = lhabilidadesp.Length;

                for (int j = -1; j < numrow+1; j++)
                {
                    if (j == -1)
                    {
                        TableRow r = new TableRow();

                        for (int i = 0; i < 2; i++)
                        {
                            if (i == 0)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(""));
                                r.Cells.Add(c);
                            }                            
                            else
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl("Karma"));
                                r.Cells.Add(c);
                            }
                        }
                        Table1.Rows.Add(r);
                    }
                    else if ( j== numrow)
                    {
                        TableRow r = new TableRow();

                        for (int i = 0; i < 2; i++)
                        {
                            if (i == 0)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl("TOTAL"));
                                r.Cells.Add(c);
                            }
                            else
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(karma.ToString()));
                                r.Cells.Add(c);
                            }
                        }
                        Table1.Rows.Add(r);
                    }
                    else
                    {
                        TableRow r = new TableRow();

                        for (int i = 0; i < 2; i++)
                        {
                            if (i == 0)
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(lhabilidadesp[j].nombre.ToString()));
                                r.Cells.Add(c);
                            }                            
                            else
                            {
                                TableCell c = new TableCell();
                                c.Controls.Add(new LiteralControl(lhabilidadesp[j].karma.ToString()));
                                r.Cells.Add(c);
                            }
                        }
                        Table1.Rows.Add(r);
                    }
                }
            }


        }

        public void estados()
        {

            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());

            wsUsuario.estado[] lestados = usuariows.listaEstados(idusuarioactual);

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
                            Table4.Rows.Add(r);

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

                                    Table4.Rows.Add(r2);

                                }

                            }


                        }
                    }

                    TableCell c = new TableCell();
                    c.Controls.Add(new LiteralControl(""));
                    c.ColumnSpan = 2;
                    ru.Cells.Add(c);
                    Table4.Rows.Add(ru);   
                }


            }

        }

        public void cargar()
        {
            ddlEstados.Items.Clear();
            
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            
            wsUsuario.estado[] lestados = usuariows.listaEstados(idusuarioactual);
            
            ListItem LU;
            if(lestados != null)
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

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            wsUsuario.WSUsuario usuariows = new wsUsuario.WSUsuario();
            int idusuarioactual = usuariows.getidUsuario(Session["Nickname"].ToString());
            string texto = txtComent.Text;


            if (usuariows.publicarComentario(texto,idusuarioactual, int.Parse(ddlEstados.SelectedItem.Value)))
            {   
                inicio();
                habilidades();
                estados();
            }
            else
            {
                lblM.Text = "Erro al comentar";

            }

        }
    }
}