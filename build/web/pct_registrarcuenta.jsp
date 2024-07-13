<%-- 
    Document   : usu_registrarcuenta
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page import="modelos.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/usu_registrarCuenta.css">
    <link rel="stylesheet" href="css/usu_perfil.css">
    <title>Crear Perfil</title> 
</head>


<body>
    <div class="part_sup">
        <img src="imagenes/logo.png" style=" padding-left: 20px; width: 100px" alt="Toothless">
    </div>
    <!--CONTENIDO-->
    <div class="container">
    <h2>Crear Perfil</h2>
    <form action="ctrlPaciente?pagina=pct_nuevo_off" method="post" class="row g-3">
        <input type="hidden" name="idPersona" value="<%= Persona.obtenerNum()%>"> <br>
        <div class="col-md-4">
            <label for="tipo_documento" class="form-label label-tipo-doc">Tipo de Doc</label>
            <select id="tipo_documento" name="tipoDoc" class="form-select form-select-sm">
                
                <option selected value="DNI">DNI</option>
                <option value="CE">CE</option>
                <option value="RUC">RUC</option>
            </select>
        </div>
        <div class="col-md-4">
            <label for="inputDni" class="form-label">Documento</label>
            <input type="number" name="numDoc" class="form-control" id="inputDni" >
        </div>
        
            <div class="col-md-6">
                <label for="inputNombre" class="form-label">Nombres</label>
                <input type="text" name="nombre" class="form-control" id="inputNombre" >
            </div>
            <div class="col-md-6">
                <label for="inputApellido" class="form-label">Apellidos</label>
                <input type="text" name="apellido" class="form-control" id="inputApellido" >
            </div>
            <div class="col-md-6">
                <label for="gender" class="form-label">Género</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="genero" id="male" value="M">
                    <label class="form-check-label" for="male">
                        Masculino
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="genero" id="female" value="F">
                    <label class="form-check-label" for="female">
                        Femenino
                    </label>
                </div>
            </div>
            
            <div class="col-md-6">
                <label for="inputNacim"  class="form-label">Fecha de Nacimiento</label>
                <input type="date" name="fecNac" class="form-control" id="inputNacim" placeholder="20/01/1995" value="20/01/1995">
            </div>
            <div class="col-md-6">
                <label for="inputTelefono"  class="form-label">Celular</label>
                <input type="number" name="telefono" class="form-control" id="inputTelefono" placeholder="987654321">
            </div>
            <div class="col-md-6">
                <label for="inputEmail" class="form-label">Correo</label>
                <input type="email" name="correo" class="form-control" id="inputEmail" placeholder="juan.perez@gmail.com" >
            </div>
        <div class="col-md-6">
                <label for="inputUsuario" class="form-label">Usuario</label>
                <input type="text" name="usuario" class="form-control" id="inputUsuario" >
        </div>
            <div class="col-md-6">
                <label for="inputPassword" class="form-label">Contraseña</label>
                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Contraseña">
            </div>
            <div class="col-md-6">
                <label for="inputConfirmPassword" class="form-label">Confirmar Contraseña</label>
                <input type="password" class="form-control" id="inputConfirmPassword" placeholder="Confirmar Contraseña">
            </div>
            <div class="col-12">
                <p>Otros</p>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="terms">
                    <label class="form-check-label" for="terms">
                        Términos y Condiciones de Uso
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="dataAuth">
                    <label class="form-check-label" for="dataAuth">
                        Autorización para el Tratamiento de Datos Personales
                    </label>
                </div>
            </div> 
        <input type="submit" class="btn btn-success" value="Crear Cuenta">
        </form>
    <br>
        
    </div>
    <div class="footer"></div>
</body>
</html>
