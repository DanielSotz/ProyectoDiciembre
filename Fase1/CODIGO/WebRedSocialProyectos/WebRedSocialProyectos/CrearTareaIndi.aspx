<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CrearTareaIndi.aspx.cs" Inherits="WebRedSocialProyectos.CrearTareaIndi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:100%;">
          <tr>
            <td style="height: 29px; width: 220px;">&nbsp;</td>
            <td style="height: 29px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large">TAREA INDIVIDUAL</asp:Label>
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
            <td style="height: 37px; width: 220px;">Nombre tarea</td>
            <td style="height: 37px">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td style="height: 37px"></td>
        </tr>        
         <tr>
            <td style="height: 74px">Descripcion</td>
            <td style="height: 74px">
                <asp:TextBox ID="txtResumen" runat="server" Width="401px" Height="59px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 74px"></td>
        </tr>
        <tr>
            <td style="width: 220px">Fecha Inicio</td>
            <td>
                <asp:TextBox ID="txtFechaIn" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 220px">Duracion</td>
            <td>
                <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox>
            &nbsp;
                <asp:Label ID="Label2" runat="server" Text="(en horas)"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 220px; height: 33px;">Cantidad Max Usuarios</td>
            <td style="height: 33px">
                <asp:TextBox ID="txtCant" runat="server"></asp:TextBox>
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="width: 220px; height: 34px;">Pago</td>
            <td style="height: 34px">
                <asp:TextBox ID="txtPago" runat="server"></asp:TextBox>
            </td>
            <td style="height: 34px"></td>
        </tr>
        <tr>
            <td style="width: 220px"></td>
            <td>
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Crear" OnClick="btnGuardar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPublicar" runat="server" CssClass="btn btn-danger" Text="Publicar" OnClick="btnPublicar_Click" Visible="False" />
            </td>
            <td></td>
        </tr>
    </table>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <table class="w-100">
            <tr>
                <td style="height: 40px; width: 127px;">&nbsp;<strong><span style="font-size: large">Conocimientos</span></strong></td>

                <td style="height: 40px; width: 439px;"></td>
                <td style="height: 40px">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 127px; height: 157px;">&nbsp;</td>
                <td style="width: 439px" rowspan="2">
                    <asp:Label ID="lblM0" runat="server">Elegir conocimientos necesarios para Tarea</asp:Label>
                    <br />
                    <br />
                <asp:DropDownList ID="ddlConocimientos" runat="server" CssClass="ml-0" Width="165px">
                </asp:DropDownList>
                    <br />
                    <br />
                <asp:Button ID="btn" runat="server" CssClass="btn btn-danger" Text="Guardar" OnClick="btnGuardar2_Click" Enabled="False" />
                    
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    
                </td>
                <td style="height: 157px">
                </td>

            </tr>
            <tr>
                <td style="width: 127px; "></td>
                <td>
                </td>

            </tr>
            <tr>
                <td style="width: 127px; height: 60px;"></td>
                <td style="width: 439px; height: 60px;"><asp:Table ID="tbEstados" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0"> </asp:Table> 
                    
                </td>
                <td style="height: 60px"><br />
                &nbsp;&nbsp;
                    <br />
                    <br />
                &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 127px; height: 26px;"></td>
                <td style="width: 439px; height: 26px;"></td>
                <td style="height: 26px">
                    
                </td>
            </tr>
        </table>    
    
    </div>
</asp:Content>
