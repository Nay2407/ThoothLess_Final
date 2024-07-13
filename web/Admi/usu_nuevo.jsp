
<%@include file="ad_referencias.jsp" %>

<form action="usu_procesa.jsp" method="post">
    
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
    Sexo <br><!-- comment -->
    <input type="text" class="form-control" name="genero" required> <br>
    Fecha de Nacimiento <br><!-- comment -->
    <input type="date" class="form-control" name="fechaNac" required> <br>
    Rol <br><!-- comment -->
    <input type="text" class="form-control" name="rol" required> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono" required> <br>
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario" required > <br>
    Contraseña <br><!-- comment -->
    <input type="text" class="form-control" name="contrasena" required > <br>
    
    <input type="hidden" name="pagina" value="usu_nuevo">

    <a href="ad_empleados.jsp?pagina=usu_listar" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
    
    
</form>
