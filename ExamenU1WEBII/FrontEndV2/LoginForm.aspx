<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="FrontEndV2.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
   <form id="form1" runat="server" novalidate>
     <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">

                        <form id="login-form" class="form" action="MenuForm.aspx" method="post">

                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="txtEmail">Email</label>
                                <asp:TextBox ID="txtEmail" TextMode="Email" autocomplete="off" class="form-control"  runat="server" required></asp:TextBox>
                                  <div class="invalid-feedback">
                                    El correo electrónico es obligatorio y debe tener un formato válido
                                  </div>
                            </div>
                            <div class="form-group">
                                <label for="txtContrasena">Contraseña</label>
                                    <asp:TextBox ID="txtContrasena" TextMode="Password" class="form-control"   autocomplete="off" runat="server" required MaxLength="20"></asp:TextBox>
                                  <div class="invalid-feedback">
                                    La Contraseña es obligatoria y debe tener un formato válido
                                  </div>
                            </div>
                            <div class="form-row justify-content-center">
                                <asp:Button ID="btnIniciarSesion" class="btn btn-primary float-left" runat="server" Text="Iniciar Sesión" OnClick="btnIniciarSesion_Click" />
                                
                                 <asp:Button ID="btnRegistrar" class="btn btn-primary float-right" runat="server" Text="Registrar" OnClick="btnRegistrar_Click"  />
                            </div>
                            <div id="divlblError" class="text-center">
                                <br />
                                <asp:Label ID="lblInfoError" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                                <asp:Label ID="lblInfoPositiva" runat="server" Font-Bold="True" ForeColor="#008f39"></asp:Label>
                                <br />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
       </form>
    
</body>
</html>
