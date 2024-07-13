
<%@page import="modelos.Persona"%>
<%@include file="ad_referencias.jsp" %>

<form action="ctrlEmpleado" method="post">
    
    <input type="hidden" name="pagina" value="usu_nuevo">
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" required > <br>
    Apellido <br><!-- comment -->
    <input type="text" class="form-control" name="apellido" required> <br><!-- comment -->
    Tipo Doc <br><!-- comment -->
    <input type="text" class="form-control" name="tipoDoc" required> <br>
    Num Doc <br><!-- comment -->
    <input type="text" class="form-control" name="numDoc" required> <br>
    Direccion <br><!-- comment -->
    <input type="text" class="form-control" name="direccion" required> <br>
    Correo <br><!-- comment -->
    <input type="text" class="form-control" name="correo" required> <br>
    Sexo <br>
    <select class="form-control" name="genero" required>
    <option value="M">Masculino</option>
    <option value="F">Femenino</option>
    </select> <br>

    Fecha de Nacimiento <br><!-- comment -->
    <input type="date" class="form-control" name="fecNac" required> <br>
    Rol <br>
    <select class="form-control" name="rol" required>
        <option value="administrador">Administrador</option>
        <option value="doctor">Doctor</option>
        <option value="recepcionista">Recepcionista</option>
    </select> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono" required> <br>
    idPersona<br><!-- comment -->
    <input type="text" class="form-control" name="idPersona" value="<%= Persona.obtenerNum()%>" readonly> <br>
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario" required > <br>
    Contraseņa <br><!-- comment -->
    <input type="text" class="form-control" name="password" required > <br>
    
    

    <a href="ad_index.jsp?pagina=ad_empleados" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
    
    
</form>
