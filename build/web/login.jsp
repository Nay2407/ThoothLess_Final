<%-- 
    Document   : login
    Created on : 29 may 2024, 1:42:35
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@include file="referencias.jsp" %>
<link rel="stylesheet" href="estilos/estiloslogin.css">
    <title>Login</title>
    
    
</head>

<body class="row" style="display: flex;">
    <div class="inicio col-md-12">
            <img style="height:105px;  display: inline-block; text-align: center" src="imagenes/logo.png" />
        </div>
    <div class="inicio col-md-12">
        
       
            <h1>Toothless</h1>
            
    </div>
    <div class=" container-fluid col-md-12">
        <form action="ctrlEmpleado?pagina=autentica" method="post" class="login">
            <div >
                <label for="exampleInputEmail1" class="form-label">Usuario</label>
                <input type="text" name="usuario"class="form-control" id="usuario" required>
                <div id="text" class="form-text"></div>
            </div>
            <div >
                <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                <input type="password" name="passwordL" class="form-control" id="clave" required>
            </div>
            <center>
                <button type="submit" value="Aceptar" class="btn text-light boton"><a>Iniciar Sesion</a></button>
            </center>
            <div >
                <label>¿Aun no tienes cuenta en Toothess?</label>
            </div>
            <center>
                <button type="submit" class="btn border-dark boton1"
                        ><a href="pct_registrarcuenta.jsp" style="color:black">Registrar cuenta</a></button>
            </center>
        </form>
    </div>
    <% if (request.getAttribute("loginFailed") != null) { %>
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>Credenciales incorrectas. Por favor, inténtelo de nuevo.</p>
        </div>
    </div>
    <script>
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        modal.style.display = "block";
        span.onclick = function () {
            modal.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <% } %>

</body>

</html>
