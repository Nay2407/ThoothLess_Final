<%@page import="modelos.Maquina"%>

<%
    int id = Integer.parseInt(request.getParameter("idMaquina"));
    Maquina m = new Maquina();
    m.ver(id); 
%>

<form action="ctrlMaquina" method="post">
    <input type="hidden" name="pagina" value="mqa_editar">
    <input type="hidden" name="idMaquina" value="<%=m.getIdMaquina()%>">
    idMaquina <br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina1"  value="<%=m.getIdMaquina()%>" readonly> <br>
    Nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre"  value="<%=m.getNombre()%>"> <br>
    Descripcion <br><!-- comment -->
    <input type="text" class="form-control" name="descripcion"  value="<%=m.getDescripcion()%>"> <br>
    Proovedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor"  value="<%=m.getproveedor()%>"> <br><!-- comment -->
    Garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia"  value="<%=m.getgarantia()%>"> <br>
    Estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado"  value="<%=m.getEstado()%>"> <br>
    

    
    <a href="ad_index.jsp?pagina=ad_inventario" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>

