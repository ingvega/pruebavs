<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalificacionesForm.aspx.cs" Inherits="FrontEndV2.CalificacionesForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion de Calificaciones</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
     <div class="container">
<table class="table table-bordered">
    <thead>
      <tr>
        <th colspan="1"><h2>Calificaciones</h2></th>
          <th colspan="1"><h2>Materia</h2> <input type="submit" name="submit" class="btn btn-info btn-md" value="Regresar"></th>
          <th colspan="1"><label>Usuario</label> <input type="submit" name="submit" class="btn btn-info btn-md" value="Cerrar Sesion"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td colspan="2">
            <table class="table table-bordered">
    <thead>
      <tr>
        <th class="auto-style1">Unidad</th>
        <th class="auto-style1">Calificaion</th>
        <th class="auto-style1">Acciones</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>100</td>
        <td>
            <input type="submit" name="submit" class="btn btn-info btn-md" value="Eliminar">
        </td>
      </tr>
    </tbody>
  </table>
        </td>

        <td colspan="1">
             <form action="/action_page.php">
             <table class="table table-bordered">
                <tbody>
                 <tr>
                    <td> 
                              <label for="fname">Unidad:</label>
                              <input type="text" id="fname" name="fname"><br><br>
                              <label for="lname">Calificacion:</label>
                              <input type="text" id="lname" name="lname"><br><br>
                              <input type="submit" name="submit" class="btn btn-info btn-md" value="Agregar">
                     </td>
                 </tbody>
             </table>
                     </form>
            
           
        </td>
      </tr>
    </tbody>
  
  
</table>
</div>
</body>
</html>
