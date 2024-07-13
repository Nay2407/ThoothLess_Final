<%@page import="modelos.Maquina"%>
<%@include file="ad_referencias.jsp" %>

<form action="ctrlMaquina" method="post">
    
    idMaquina<br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina" value="<%= Maquina.obtenerNum()%>" readonly> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" required> <br><br><!-- comment -->
    Descripcion <br><!-- comment -->
    <input type="text" class="form-control" name="descripcion" required> <br><br><!-- comment -->
    Proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" required> <br>
    Garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" required> <br>
    Estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" required> <br>
    
    <input type="hidden" name="pagina" value="mqa_nuevo">
    <a href="ad_index.jsp?pagina=ad_inventario" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>

