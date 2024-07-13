
<%@page import="tools.Autentica" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validacion de usuarios</title>
    </head>
    <body>
        <%
            String usr = request.getParameter("usuario");
            String psw = request.getParameter("password");
            Autentica a = new Autentica();
            boolean log = false;
            boolean logrec = false;
            boolean logradmi = false;
            boolean logrdoc = false;
            log = a.getLogueado(usr, psw);
            logrec = a.getLogueadoRec(usr, psw);
            logradmi = a.getLogueadoAdmi(usr, psw);
            logrdoc = a.getLogueadoAdmi(usr, psw);
      
            
            if (log) {
                response.sendRedirect("Usuario/usu_index.jsp");
            } else if(logrec){
                response.sendRedirect("Recepcionista/rec_index.jsp");
            } else if(logradmi){
                response.sendRedirect("Admi/ad_index.jsp");
            } else if(logrdoc){
                response.sendRedirect("Doctor/doc_index.jsp");
            }else{
            response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>

