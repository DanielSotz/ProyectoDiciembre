<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebRedSocialProyectos.Perfil" %>

<%--<script laguage="C#" runat="server">

    
    void Page_Load(object sender, EventArgs e)
    {
        
    }
  </script>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="height: 74px; width: 477px;"><strong><span style="font-size: x-large">Habilidades y Conocimientos</span></strong><br />
                    <asp:Table ID="Table1" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0"> </asp:Table> 
                    <br/>
                    <br/>
                    <asp:Table ID="Table3" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="10" CellSpacing="0"> </asp:Table> </td>

                <td style="height: 74px"></td>
                <td style="height: 50px">
                    <br />
                    <asp:Table ID="Table2" runat="server" GridLines="Both" HorizontalAlign="Center" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0">
        </asp:Table>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 477px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 477px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        
    
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <table style="width: 90%;">
            <tr>
                <td style="height: 66px; width: 127px;">&nbsp;<strong><span style="font-size: x-large">ESTADOS</span></strong></td>

                <td style="height: 66px; width: 424px;"></td>
                <td style="height: 66px">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 127px">&nbsp;</td>
                <td style="width: 424px" rowspan="2"><asp:Table ID="Table4" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0"> </asp:Table> 
                    
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Comentario"></asp:Label>
                    <br />
                    <br />
                <asp:DropDownList ID="ddlEstados" runat="server" CssClass="ml-0" Width="124px">
                </asp:DropDownList>
                    <br />
                    <br />
                    <asp:TextBox ID="txtComent" runat="server" TextMode="MultiLine" Width="236px"></asp:TextBox>
                    <br />
                    <br />
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Comentar" OnClick="btnGuardar_Click" />
                &nbsp;<asp:Label ID="lblM" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="width: 127px; height: 45px;"></td>
                <td style="height: 45px">
                &nbsp;
                </td>

            </tr>
            <tr>
                <td style="width: 127px">&nbsp;</td>
                <td style="width: 424px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        
    
    </div>


</asp:Content>
