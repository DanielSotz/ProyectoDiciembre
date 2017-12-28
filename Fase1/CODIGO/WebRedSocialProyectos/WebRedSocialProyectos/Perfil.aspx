<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebRedSocialProyectos.Perfil" %>

<script laguage="C#" runat="server">
      void Page_Load(object sender, EventArgs e)
      {
          int numrows = 4;
          int numcells = 2;

          for(int j=0; j<numrows; j++)
          {
              TableRow r = new TableRow();
              for(int i=0; i < numcells; i++)
              {
                  TableCell c = new TableCell();
                  c.Controls.Add(new LiteralControl("row " + j.ToString() + ", cell" + i.ToString()));
                  r.Cells.Add(c);
              }
              Table1.Rows.Add(r);              
          }

          for(int j=0; j<numcells; j++)
          {
              TableRow r = new TableRow();
              for(int i=0; i < numrows; i++)
              {
                  TableCell c = new TableCell();
                  c.Controls.Add(new LiteralControl("cell " + j.ToString() + ", row" + i.ToString()));
                  r.Cells.Add(c);
              }
              Table2.Rows.Add(r);              
          }
      }
  </script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td><asp:Table ID="Table1" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0">
        </asp:Table>&nbsp;</td>
                <td>&nbsp;</td>
                <td><asp:Table ID="Table2" runat="server" GridLines="Both" HorizontalAlign="Center" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0">
        </asp:Table>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        
    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
