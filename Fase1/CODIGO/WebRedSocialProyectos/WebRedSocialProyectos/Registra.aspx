<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registra.aspx.cs" Inherits="WebRedSocialProyectos.Registra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin - Start Bootstrap Template</title>
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">
    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Registrar Cuenta</div>
            <div class="card card-register mx-auto mt-5">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">Nombre</label>
                                <asp:TextBox ID="txtNombre" runat="server" class="form-control" type="text" aria-describedby="nameHelp" placeholder="ingrese su nombre completo"></asp:TextBox>
                                &nbsp;
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputName">Apellido</label>
                                <asp:TextBox ID="txtApellido" runat="server" class="form-control" type="text" aria-describedby="nameHelp" placeholder="ingrese su apellido"></asp:TextBox>
                                &nbsp;
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputEmail1">&nbsp; Nickname</label>&nbsp;
                                <asp:TextBox ID="txtNick" runat="server" class="form-control" type="text" aria-describedby="nameHelp" placeholder="ingresar nickname"></asp:TextBox>
                                &nbsp;
                            </div>                                                    
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" type="password" aria-describedby="nameHelp" placeholder="contraseña"></asp:TextBox>
                            </div>
                        </div>
                    </div>                                        
                    <asp:Button ID="btnRegistrarCuenta" runat="server" class="btn btn-primary btn-block" Text="Registrar" OnClick="btnRegistrarCuenta_Click" />
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="Login.aspx">pagina Login</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>


<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

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
      }
  </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server" GridLines="Both" HorizontalAlign="Center" Font-Names="Arial" Font-Size="8pt" CellPadding="15" CellSpacing="0">
        </asp:Table>
    
    </div>
    </form>
</body>
</html>--%>