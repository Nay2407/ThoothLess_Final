<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>

<%
    int usr = Integer.parseInt(request.getParameter("idEmpleado"));
    Empleado e = new Empleado();
    e=e.ver(usr);
    
    Persona p = new Persona();
    p=p.ver(e.getIdPersona()); 
%>

<form action="usu_procesa.jsp" method="post">
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario" readonly value="<%=e.getUsuario()%>"> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" readonly value="<%=p.getNombre()%>"> <br>
    Apellido <br><!-- comment -->
    <input type="text" class="form-control" name="apellido" readonly value="<%=p.getApellido()%>"> <br><!-- comment -->
    Tipo Doc <br><!-- comment -->
    <input type="text" class="form-control" name="tipoDoc" readonly value="<%=p.getTipoDoc()%>"> <br>
    Num Doc <br><!-- comment -->
    <input type="text" class="form-control" name="numDoc" readonly value="<%=p.getNumDoc()%>"> <br>
    Direccion <br><!-- comment -->
    <input type="text" class="form-control" name="direccion" readonly value="<%=p.getDireccion()%>"> <br>
    Correo <br><!-- comment -->
    <input type="text" class="form-control" name="correo" readonly value="<%=p.getCorreo()%>"> <br>
    Sexo <br><!-- comment -->
    <input type="text" class="form-control" name="sexo" readonly value="<%=p.getGenero()%>"> <br>
    Fecha de Nacimiento <br><!-- comment -->
    <input type="text" class="form-control" name="fecNac" readonly value="<%=p.getFechaNac()%>"> <br>
    Rol <br><!-- comment -->
    <input type="text" class="form-control" name="rol" readonly value="<%=e.getRol()%>"> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono" readonly value="<%=p.getTelefono()%>"> <br>
    
    
    <input type="hidden" name="pagina" value="usu_eliminar">
    <a href="ad_empleados.jsp?pagina=usu_listar" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>
