<%@page import="modelos.Maquina" %>

<%
    int id = Integer.parseInt(request.getParameter("idMaquina"));
    Maquina m = new Maquina();
    m.ver(id);
%>

<form action="ctrlMaquina" method="post">
    idMaquina <br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina" readonly value="<%=m.getIdMaquina()%>"> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" readonly value="<%=m.getNombre()%>"> <br><br><!-- comment -->
    Descripcion <br><!-- comment -->
    <input type="text" class="form-control" name="descripcion" readonly value="<%=m.getDescripcion()%>"> <br><br><!-- comment -->
    Proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" readonly value="<%=m.getproveedor()%>"> <br>
    Garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" readonly value="<%=m.getgarantia()%>"> <br>
    Estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" readonly value="<%=m.getEstado()%>"> <br>
    <input type="hidden" name="pagina" value="mqa_eliminar">
    
    <a href="ad_index.jsp?pagina=ad_inventario" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>
