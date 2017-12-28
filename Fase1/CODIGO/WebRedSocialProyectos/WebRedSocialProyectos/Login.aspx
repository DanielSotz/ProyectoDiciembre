<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebRedSocialProyectos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Red Social Proyectos</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet"/>
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
          <form id="form1" runat="server">
          <div class="form-group">
            <label for="exampleInputEmail1">Nickname</label>
              <asp:TextBox ID="txtNickname" class="form-control" type="text" aria-describedby="nameHelp" placeholder="Enter nickname" runat="server"></asp:TextBox>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Contraseña</label>
              <asp:TextBox ID="txtPassword" class="form-control" type="password" placeholder="Password" runat="server"></asp:TextBox>
          </div>
          <div class="form-group">
            <div class="form-check">
              
            </div>
          </div>
          <a class="d-block small mt-3" href="register.html">
              <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="btnLogin_Click"/>
              </a>
              <div class="text-center">
          <a class="d-block small mt-3" href="registra.aspx">Registrar usuario</a>
          
                   <asp:Label ID="lblTemp" runat="server"></asp:Label>
        </div>
          </form>
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
