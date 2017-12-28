<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EstadoPublicar.aspx.cs" Inherits="WebRedSocialProyectos.EstadoPublicar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblM" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px">&nbsp;</td>
            <td style="height: 29px">
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px">Estado</td>
            <td style="height: 29px">
                <asp:TextBox ID="txtEstado" runat="server" Width="401px" Height="59px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>       
        
        
        <tr>
            <td></td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Publicar" OnClick="btnGuardar_Click" />
            </td>
            <td></td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
