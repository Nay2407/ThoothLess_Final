<%-- 
    Document   : usu_registrarcuenta
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

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
        <img src="/imagenes/logo.png" alt="Toothless">
    </div>
    <!--CONTENIDO-->
    <div class="container">
    <h2>Crear Perfil</h2>
    <form class="row g-3">
        <div class="col-md-4">
            <label for="tipo_documento" class="form-label label-tipo-doc">Tipo de Doc</label>
            <select id="tipo_documento" class="form-select form-select-sm">
                <option selected>Tipo Doc</option>
                <option value="1">DNI</option>
                <option value="2">CE</option>
                <option value="3">RUC</option>
            </select>
        </div>
        <div class="col-md-4">
            <label for="inputDni" class="form-label">Documento</label>
            <input type="number" class="form-control" id="inputDni" placeholder="1234578" value="12345678">
        </div>
            <div class="col-md-6">
                <label for="inputNombre" class="form-label">Nombres</label>
                <input type="text" class="form-control" id="inputNombre" placeholder="Juan Alberto" value="Juan Alberto">
            </div>
            <div class="col-md-6">
                <label for="inputApellido" class="form-label">Apellidos</label>
                <input type="text" class="form-control" id="inputApellido" placeholder="Perez Rodriguez" value="Perez Rodriguez">
            </div>
            <div class="col-md-6">
                <label for="gender" class="form-label">Género</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="male" value="masculino">
                    <label class="form-check-label" for="male">
                        Masculino
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="female" value="femenino">
                    <label class="form-check-label" for="female">
                        Femenino
                    </label>
                </div>
            </div>
            
            <div class="col-md-6">
                <label for="inputNacim" class="form-label">Fecha de Nacimiento</label>
                <input type="date" class="form-control" id="inputNacim" placeholder="20/01/1995" value="20/01/1995">
            </div>
            <div class="col-md-6">
                <label for="inputTelefono" class="form-label">Celular</label>
                <input type="number" class="form-control" id="inputTelefono" placeholder="987654321" value="987654321">
            </div>
            <div class="col-md-6">
                <label for="inputEmail" class="form-label">Correo</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="juan.perez@gmail.com" value="juan.perez@gmail.com">
            </div>
            <div class="col-md-6">
                <label for="inputPassword" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="inputPassword" placeholder="Contraseña">
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
        </form>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#RegistrarUsuario">
            Crear Cuenta
        </button>
    </div>
    <div class="footer"></div>
</body>
</html>
