<%@page import="Clases.Maquina" %>

<%
    String nombre = request.getParameter("maquina");
    Maquina mqa = new Maquina();
    mqa = mqa.ver(nombre);
%>

<form action="ad_inventario.jsp?pagina=mqa_listar" method="post">
     idMaquina <br><!-- comment -->
    <input type="text" class="form-control" name="idMaquina" readonly value="<%=mqa.getIdMaquina()%>"> <br>
    nombre <br><!-- comment -->
    <input type="text" class="form-control" name="nombre" readonly value="<%=mqa.getNombre()%>"> <br><!-- comment -->
    proveedor <br><!-- comment -->
    <input type="text" class="form-control" name="proveedor" readonly value="<%=mqa.getproveedor()%>"> <br>
    garantia <br><!-- comment -->
    <input type="text" class="form-control" name="garantia" readonly value="<%=mqa.getgarantia()%>"> <br>
    estado <br><!-- comment -->
    <input type="text" class="form-control" name="estado" readonly value="<%=mqa.getEstado()%>"> <br> -->    
    <input type="submit" class="btn btn-success" value="Aceptar">
</form>
