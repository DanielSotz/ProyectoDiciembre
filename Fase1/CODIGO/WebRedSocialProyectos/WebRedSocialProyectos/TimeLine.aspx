<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="TimeLine.aspx.cs" Inherits="WebRedSocialProyectos.TimeLine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="w-100">
            <tr>
                <td style="height: 40px; width: 127px;">&nbsp;<strong><span style="font-size: x-large">ESTADOS</span></strong></td>

                <td style="height: 40px; width: 439px;"></td>
                <td style="height: 40px">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 127px; height: 261px;"></td>
                <td style="width: 439px" rowspan="2"><asp:Table ID="tbEstados" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0"> </asp:Table> 
                    
                </td>
                <td style="height: 261px">
                    <br />
                    <asp:Label ID="lblM0" runat="server">Elegir estado</asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlEstados" runat="server" CssClass="ml-0" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged">
                </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Comentario"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtComent" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-danger" Text="Comentar" OnClick="btnGuardar_Click" />
                &nbsp;<asp:Label ID="lblM" runat="server"></asp:Label>
                    <br />
                    <br />
                <asp:Button ID="btnGuardar0" runat="server" CssClass="btn btn-danger" Text="Denunciar Estado" OnClick=" btnDenunciarEstado_Click" />
                &nbsp; <asp:Label ID="lblM2" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="width: 127px; height: 46px;"></td>
                <td style="height: 46px">
                &nbsp;</td>

            </tr>
            <tr>
                <td style="width: 127px; height: 60px;"></td>
                <td style="width: 439px; height: 60px;"></td>
                <td style="height: 60px">Denuncia Comentario<br />
                    <asp:Label ID="lblM1" runat="server">Elegir comentario</asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlComentarios" runat="server" CssClass="ml-0" Width="159px">
                </asp:DropDownList>
                    <br />
                    <br />
                <asp:Button ID="btnGuardar1" runat="server" CssClass="btn btn-danger" Text="Denunciar" OnClick="btnDenunciarComent_Click" />
                &nbsp;<asp:Label ID="lblM3" runat="server"></asp:Label>
                </td>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div>
        <table class="w-100">
            <tr>
                <td style="height: 40px; width: 127px;">&nbsp;<span style="font-weight: bold; font-size: x-large">PROYECTOS</span></td>

                <td style="height: 40px; width: 439px;"></td>
                <td style="height: 40px">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 127px; height: 261px;"></td>
                <td style="width: 439px" rowspan="2"><asp:Table ID="Table1" runat="server" GridLines="Both" HorizontalAlign="Left" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0"> </asp:Table> 
                    
                </td>
                <td style="height: 261px">
                    <br />
                    <asp:Label ID="Label2" runat="server">Elegir Proyecto</asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlProyecto" runat="server" CssClass="ml-0" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged">
                </asp:DropDownList>
                    <br />
                    <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Comentar" OnClick="btnGuardar_Click" />
                &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <br />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Denunciar Estado" OnClick=" btnDenunciarEstado_Click" />
                &nbsp; <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="width: 127px; height: 46px;"></td>
                <td style="height: 46px">
                    Denuncia Comentario<br />
                    <asp:Label ID="Label6" runat="server">Elegir tarea</asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlTarea" runat="server" CssClass="ml-0" Width="159px">
                </asp:DropDownList>
                    <br />
                    <br />
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Denunciar" OnClick="btnDenunciarComent_Click" />
                &nbsp;<asp:Label ID="Label7" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="width: 127px; height: 60px;"></td>
                <td style="width: 439px; height: 60px;"></td>
                <td style="height: 60px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 127px; height: 26px;"></td>
                <td style="width: 439px; height: 26px;"></td>
                <td style="height: 26px">
                    
                </td>
            </tr>
            <tr>
                <td style="width: 127px; height: 26px;">&nbsp;</td>
                <td style="width: 439px; height: 26px;">&nbsp;</td>
                <td style="height: 26px">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 127px; height: 26px;">&nbsp;</td>
                <td style="width: 439px; height: 26px;">&nbsp;</td>
                <td style="height: 26px">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 127px; height: 26px;">&nbsp;</td>
                <td style="width: 439px; height: 26px;">&nbsp;</td>
                <td style="height: 26px">
                    
                    &nbsp;</td>
            </tr>
        </table>    
    
    </div>
</asp:Content>
