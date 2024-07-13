<%@page import="modelos.Maquina" %>

<%
    int id = Integer.parseInt(request.getParameter("idMaquina"));
    Maquina mqa = new Maquina();
    mqa.ver(id);
%>

<form action="ad_index.jsp?pagina=ad_inventario" method="post">
     idMaquina <br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina" readonly value="<%=mqa.getIdMaquina()%>"> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" readonly value="<%=mqa.getNombre()%>"> <br><!-- comment -->
    Descripcion <br><!-- comment -->
    <input type="text" class="form-control" name="descripcion" readonly value="<%=mqa.getDescripcion()%>"> <br><!-- comment -->
    proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" readonly value="<%=mqa.getproveedor()%>"> <br>
    garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" readonly value="<%=mqa.getgarantia()%>"> <br>
    estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" readonly value="<%=mqa.getEstado()%>"> <br> -->    
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>
