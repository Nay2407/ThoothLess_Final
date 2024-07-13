<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>

<%
    int usr = Integer.parseInt(request.getParameter("idEmpleado"));
    Empleado e = new Empleado();
    e=e.ver(usr);
    
    Persona p = new Persona();
    p=p.ver(e.getIdPersona()); 
%>

<form action="ctrlUsuario" method="post">
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario"  value="<%=e.getUsuario()%>"> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre"  value="<%=p.getNombre()%>"> <br>
    Apellido <br><!-- comment -->
    <input type="text" class="form-control" name="apellido"  value="<%=p.getApellido()%>"> <br><!-- comment -->
    Tipo Doc <br><!-- comment -->
    <input type="text" class="form-control" name="tipoDoc"  value="<%=p.getTipoDoc()%>"> <br>
    Num Doc <br><!-- comment -->
    <input type="text" class="form-control" name="numDoc"  value="<%=p.getNumDoc()%>"> <br>
    Direccion <br><!-- comment -->
    <input type="text" class="form-control" name="direccion"  value="<%=p.getDireccion()%>"> <br>
    Correo <br><!-- comment -->
    <input type="text" class="form-control" name="correo"  value="<%=p.getCorreo()%>"> <br>
    Sexo <br><!-- comment -->
        <input type="text" class="form-control" name="sexo"  value="<%=p.getGenero()%>"> <br>
    Fecha de Nacimiento <br><!-- comment -->
    <input type="text" class="form-control" name="fecNac"  value="<%=p.getFechaNac()%>"> <br>
    Rol <br><!-- comment -->
    <input type="text" class="form-control" name="rol"  value="<%=e.getRol()%>"> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono"  value="<%=p.getTelefono()%>"> <br>

    
    <a href="ad_empleados.jsp?pagina=usu_listar" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>

