<%@page import="modelos.Empleado,modelos.Persona" %>
<%@include file="ad_referencias.jsp" %>

<%
    int id =  Integer.parseInt(request.getParameter("usuario"));
    Empleado u = new Empleado();
    u = u.ver(id);
    
    Persona p = new Persona();
    p=p.ver(u.getIdPersona()); 
%>

<form action="ad_empleados.jsp?pagina=usu_listar" method="post">
    Usuario <br><!-- comment -->
    <input type="text" class="form-control" name="usuario" readonly value="<%=u.getUsuario()%>"> <br>
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
    <input type="text" class="form-control" name="rol" readonly value="<%=u.getRol()%>"> <br>
    Telefono<br><!-- comment -->
    <input type="text" class="form-control" name="telefono" readonly value="<%=p.getTelefono()%>"> <br>

    
    <input type="submit" class="btn btn-success" value="Aceptar">
    
    
</form>

