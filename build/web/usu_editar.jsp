<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>

<%
    int usr = Integer.parseInt(request.getParameter("idEmpleado"));
    Empleado e = new Empleado();
    e.ver(usr);
    
    Persona p = new Persona();
    p.ver(e.getIdPersona()); 
%>

<form action="ctrlEmpleado" method="post">
    <input type="hidden" name="pagina" value="usu_editar">
    <input type="hidden" name="idEmpleado" value="<%=e.getIdEmpleado()%>">
    <input type="hidden" name="idPersona" value="<%=e.getIdPersona()%>">
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario"  value="<%=e.getUsuario()%>"> <br>
    Contraseña <br><!-- comment -->
    <input type="text" class="form-control" name="password"  value="<%=e.getContraseña()%>"> <br>
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
    Sexo <br>
<select class="form-control" name="genero" required>
    <option value="M" <%= "M".equals(p.getGenero()) ? "selected" : "" %>>Masculino</option>
    <option value="F" <%= "F".equals(p.getGenero()) ? "selected" : "" %>>Femenino</option>
</select> <br>
    Fecha de Nacimiento <br><!-- comment -->
    <input type="text" class="form-control" name="fecNac"  value="<%=p.getFechaNac()%>"> <br>
    Rol <br>
<select class="form-control" name="rol" required>
    <option value="administrador" <%= "administrador".equals(e.getRol()) ? "selected" : "" %>>Administrador</option>
    <option value="doctor" <%= "doctor".equals(e.getRol()) ? "selected" : "" %>>Doctor</option>
    <option value="recepcionista" <%= "recepcionista".equals(e.getRol()) ? "selected" : "" %>>Recepcionista</option>
</select> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono"  value="<%=p.getTelefono()%>"> <br>

    
    <a href="ad_index.jsp?pagina=ad_empleados" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>

