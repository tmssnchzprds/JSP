<%-- 
    Document   : procesaEncuesta
    Created on : 02-feb-2017, 14:04:08
    Author     : jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado de la encuesta</h1>
        <%
            String nombre=request.getParameter("nombre");
            String[] lenguajes=request.getParameterValues("lenguajes");
        %>
        Nombre:<%=nombre%>
        <br>Lenguajes Favoritos:
        <%
            for (String lenguaje:lenguajes){
            out.println("<br>"+lenguaje);
            }
        %>
    </body>
</html>
