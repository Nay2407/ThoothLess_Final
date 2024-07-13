<%@page import="modelos.Empleado, modelos.Paciente,modelos.Persona"%>

<%
    int id = Integer.parseInt(request.getParameter("idPaciente"));
    Paciente e = new Paciente();
    e.ver(id);

    Persona p = new Persona();
    p.ver(e.getIdPersona());
%>
<div class="row">
    <form action="ctrlPaciente" method="post">
        <div class="row">
            <input type="hidden" name="pagina" value="pct_editar">
            <input type="hidden" name="idPaciente" value="<%=e.getIdPaciente()%>">
            <input type="hidden" name="idPersona" value="<%=e.getIdPersona()%>">
            <div class="col-sm-6">
                Usuario <br><!-- comment -->
                <input type="text" class="form-control" name="usuario"  value="<%=e.getUsuario()%>"> <br>
            </div>
            <div class="col-sm-6">
                Contraseña <br><!-- comment -->
                <input type="text" class="form-control" name="password"  value="<%=e.getContraseña()%>"> <br>
            </div>
            <div class="col-sm-6">
                Nombre <br><!-- comment -->
                <input type="text" class="form-control" name="nombre"  value="<%=p.getNombre()%>"> <br>
            </div>
            <div class="col-sm-6">
                Apellido <br><!-- comment -->
                <input type="text" class="form-control" name="apellido"  value="<%=p.getApellido()%>"> <br><!-- comment -->
            </div>
            <div class="col-sm-6">
                Tipo Doc <br><!-- comment -->
                <input type="text" class="form-control" name="tipoDoc"  value="<%=p.getTipoDoc()%>"> <br>
            </div>
            <div class="col-sm-6">
                Num Doc <br><!-- comment -->
                <input type="text" class="form-control" name="numDoc"  value="<%=p.getNumDoc()%>"> <br>
            </div>
            <div class="col-sm-6">
                Direccion <br><!-- comment -->
                <input type="text" class="form-control" name="direccion"  value="<%=p.getDireccion()%>"> <br>
            </div>
            <div class="col-sm-6">
                Correo <br><!-- comment -->
                <input type="text" class="form-control" name="correo"  value="<%=p.getCorreo()%>"> <br>
                </div>
                <div class="col-sm-6">
                Sexo <br><!-- comment -->
                <select class="form-control" name="genero" required>
                    <option value="M" <%= "M".equals(p.getGenero()) ? "selected" : ""%>>Masculino</option>
                    <option value="F" <%= "F".equals(p.getGenero()) ? "selected" : ""%>>Femenino</option>
                </select> <br>
            </div>
            <div class="col-sm-6">
                Fecha de Nacimiento <br><!-- comment -->
                <input type="text" class="form-control" name="fecNac"  value="<%=p.getFechaNac()%>"> <br>
            </div>
            <div class="col-sm-6">
                Telefono<br><!-- comment -->
                <input type="text" class="form-control" name="telefono"  value="<%=p.getTelefono()%>"> <br>

            </div>
            <div class="col-sm">
                <a href="ad_index.jsp?pagina=ad_paciente" class="btn btn-danger">Cancelar</a>
                <input type="submit" class="btn btn-success" value="Aceptar">
            </div>
        </div>

    </form>

