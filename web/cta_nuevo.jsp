<%-- 
    Document   : cta_nuevo
    Created on : 3 jul 2024, 23:06:38
    Author     : User
--%>
<%@page import="modelos.Citas"%>
<%@include file="pct_referencias.jsp" %>

<form action="ctrlCitas" method="post">
    
    <input type="hidden" name="pagina" value="cta_nuevo">
    Paciente <br><!-- comment -->
    <input type="text" class="form-control" name="paciente" required > <br>
    Recepcionista <br><!-- comment -->
    <input type="text" class="form-control" name="recepcionista" required> <br><!-- comment -->
    Dentista <br><!-- comment -->
    <input type="text" class="form-control" name="dentista" required> <br>
    Especialidad <br><!-- comment -->
    <input type="text" class="form-control" name="especialidad" required> <br>
    Tratamiento <br><!-- comment -->
    <input type="text" class="form-control" name="tratamiento" required> <br>
    Hora <br><!-- comment -->
    <input type="text" class="form-control" name="hora" required> <br>
    Descripcion <br><!-- comment -->
    <input type="text" class="form-control" name="descripcion" required> <br>
    Fecha<br><!-- comment -->
    <input type="date" class="form-control" name="fecha" required> <br>
    Estado<br><!-- comment -->
    <input type="text" class="form-control" name="estado" required> <br>
    
    
    <a href="pct_index.jsp?pagina=pct_citas" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
    
    
</form>