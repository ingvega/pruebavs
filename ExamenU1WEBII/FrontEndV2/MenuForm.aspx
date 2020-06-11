<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuForm.aspx.cs" Inherits="FrontEndV2.MenuForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
     <form id="form1" runat="server" novalidate>
     <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">

                       <%--<form id="menu1-form" class="form"  action="MateriasForm.aspx" method="post">--%>

                            <h3 class="text-center text-info">Menú</h3>
                            <asp:Label ID="lblUsr" runat="server" Font-Bold="True" ForeColor="#008f39"></asp:Label>
                            
                            <div class="form-group">
                                <asp:Button ID="btnGestionarMaterias" class="btn btn-primary float-left" runat="server" Text="Gestionar Mis Materias" OnClick="btnGestionarMaterias_Click" />
                               
                            </div>
                        <%--</form>
                           <br>
                           <br>
                        <form id="menu2-form" class="form" action="LoginForm.aspx" method="post">--%>
                            <div class="form-group">
                              <asp:Button ID="btnCerrarSesion" class="btn btn-primary float-left" runat="server" Text="Cerrar Sesión" OnClick="btnCerrarSesion_Click" />
                            </div>
                        <%--</form>--%>
                       
                    </div>
                </div>
            </div>
        </div>
         </form>
</body>
</html>
