<%@page import="modelos.Paciente,modelos.Persona"%>

<%
    int id = Integer.parseInt(request.getParameter("idPaciente"));
    Paciente e = new Paciente();
    e.ver(id);

    Persona p = new Persona();
    p.ver(e.getIdPersona());
%>

<form action="ctrlPaciente" method="post"></div>
<div class="row">
    <input type="hidden" name="idPaciente" value="<%=e.getIdPaciente()%>">
    <input type="hidden" name="idPersona" value="<%=e.getIdPersona()%>">

    <div class="col-sm-6">
        Usuario <br><!-- comment -->
        <input type="text" class="form-control" name="usuario" readonly value="<%=e.getUsuario()%>"> <br>
    </div>
    <div class="col-sm-6">
        Nombre <br><!-- comment -->
        <input type="text" class="form-control" name="nombre" readonly value="<%=p.getNombre()%>"> <br>
    </div>
    <div class="col-sm-6">
        Apellido <br><!-- comment -->
        <input type="text" class="form-control" name="apellido" readonly value="<%=p.getApellido()%>"> <br><!-- comment -->
    </div>
    <div class="col-sm-6">
        Tipo Doc <br><!-- comment -->
        <input type="text" class="form-control" name="tipoDoc" readonly value="<%=p.getTipoDoc()%>"> <br>
    </div>
    <div class="col-sm-6">
        Num Doc <br><!-- comment -->
        <input type="text" class="form-control" name="numDoc" readonly value="<%=p.getNumDoc()%>"> <br>
    </div>
    <div class="col-sm-6">
        Direccion <br><!-- comment -->
        <input type="text" class="form-control" name="direccion" readonly value="<%=p.getDireccion()%>"> <br>
    </div>
    <div class="col-sm-6">
        Correo <br><!-- comment -->
        <input type="text" class="form-control" name="correo" readonly value="<%=p.getCorreo()%>"> <br>
    </div>
    <div class="col-sm-6">
        Sexo <br>
        <select class="form-control" name="genero" readonly>
            <option value="M" <%= "M".equals(p.getGenero()) ? "selected" : ""%>>Masculino</option>
            <option value="F" <%= "F".equals(p.getGenero()) ? "selected" : ""%>>Femenino</option>
        </select> <br>
    </div>
    <div class="col-sm-6">
        Fecha de Nacimiento <br><!-- comment -->
        <input type="text" class="form-control" name="fecNac" readonly value="<%=p.getFechaNac()%>"> <br>
    </div>
    <div class="col-sm-6">
        Telefono<br><!-- comment -->
        <input type="text" class="form-control" name="telefono" readonly value="<%=p.getTelefono()%>"> <br>
    </div>
    <div class="col-sm">

        <input type="hidden" name="pagina" value="pct_eliminar">
        <a href="ad_index.jsp?pagina=ad_paciente" class="btn btn-danger">Cancelar</a>
        <input type="submit" class="btn btn-success" value="Aceptar">
    </div>
</div>


</form>
