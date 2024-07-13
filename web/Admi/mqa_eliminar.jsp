<%@page import="Clases.Maquina" %>

<%
    String mqa = request.getParameter("maquina");
    Maquina m = new Maquina();
    m = m.ver(mqa);
%>

<form action="mqa_procesa.jsp" method="post">
    idMaquina <br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina" readonly value="<%=m.getIdMaquina()%>"> <br>
    nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" readonly value="<%=m.getNombre()%>"> <br><br><!-- comment -->
    proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" readonly value="<%=m.getproveedor()%>"> <br>
    garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" readonly value="<%=m.getgarantia()%>"> <br>
    estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" readonly value="<%=m.getEstado()%>"> <br>
    <input type="hidden" name="pagina" value="mqa_eliminar">
    <a href="ad_inventario.jsp?pagina=mqa_listar" class="btn btn-danger">Cancelar</a>
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>
