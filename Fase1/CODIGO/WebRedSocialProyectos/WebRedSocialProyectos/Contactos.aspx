<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="WebRedSocialProyectos.Contactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:100%;">
          <tr>
            <td style="height: 29px; width: 220px;">&nbsp;</td>
            <td style="height: 29px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large">CONTACTOS</asp:Label>
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
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px; width: 220px;">Nickname Usuarios</td>
            <td style="height: 29px">
                <asp:DropDownList ID="ddlUsuarios" runat="server">
                </asp:DropDownList>
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
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Seguir" OnClick="btnGuardar_Click" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <table style="width:100%;">
         
         <tr>
            <td style="height: 29px; width: 221px;">&nbsp;</td>
            <td style="height: 29px">
                
            </td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
         <tr>
            <td style="width: 221px">&nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px; width: 221px;">&nbsp;</td>
            <td style="height: 29px">
                &nbsp;</td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 29px; width: 221px;">Nickname Contactos</td>
            <td style="height: 29px">
                <asp:DropDownList ID="ddlContactos" runat="server">
                </asp:DropDownList>
            </td>
            <td style="height: 29px"></td>
        </tr>       
        
        
        <tr>
            <td style="width: 221px"></td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 221px"></td>
            <td>
                <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" Text="Eliminar Contacto" OnClick="btnEliminar_Click" />
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
