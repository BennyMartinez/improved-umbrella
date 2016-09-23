<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PuntoDeVenta.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="js/jquery.js" language="javascript" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

     <script src="scripts/Login.js"  language="javascript" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/Login.css"/>
   
    
    <title></title>
</head>
<body >
  <div class="container">

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="form" class="well login-box">
                <form action="" runat="server" >
                    <legend>Login</legend>
                    <div class="form-group">
                        <asp:label runat="server" for="username-email" ID="lblMail">E-mail or Username</asp:label>
                        <asp:TextBox runat="server" ID ="txtUser" value='' placeholder="E-mail or Username" type="text"  class="form-control" TextMode="Search"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:label runat="server" for="password">Password</asp:label>
                        <asp:TextBox runat="server" ID ="txtPass" value='' placeholder="Password" type="text" class="form-control" TextMode="Password"></asp:TextBox>
                        
                    </div>
                    <div class="form-group text-center">
                          
                       <asp:Button ID="btnInicio" runat="server"  CssClass="btn btn-success btn-cancel-action"  Text="Entrar" OnClick="_iniciarSesion"/>
                    </div>
                </form>
            </div>
        
        </div>
    </div>
</div>

   
</body>
</html>

