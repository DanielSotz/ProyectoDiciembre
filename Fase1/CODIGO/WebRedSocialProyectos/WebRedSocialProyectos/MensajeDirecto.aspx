<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="MensajeDirecto.aspx.cs" Inherits="WebRedSocialProyectos.MensajeDirecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
          <tr>
            <td style="height: 29px; width: 220px;">&nbsp;</td>
            <td style="height: 29px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large">Mensaje Directo</asp:Label>
            </td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
         <tr>
            <td style="height: 29px; width: 220px;">&nbsp;</td>
            <td style="height: 29px">
                
            </td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
         <tr>
            <td style="width: 220px">&nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblM" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px; width: 220px;">&nbsp;</td>
            <td style="height: 29px">
                &nbsp;</td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px; width: 220px;">Nickname Contacto</td>
            <td style="height: 29px">
                <asp:DropDownList ID="ddlContactos" runat="server">
                </asp:DropDownList>
            </td>
            <td style="height: 29px"></td>
        </tr>        
         <tr>
            <td style="height: 29px">Mensaje</td>
            <td style="height: 29px">
                <asp:TextBox ID="txtMensaje" runat="server" Width="401px" Height="59px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 220px"></td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 220px"></td>
            <td>
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Enviar" OnClick="btnGuardar_Click" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
