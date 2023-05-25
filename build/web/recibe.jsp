<%-- 
    Document   : recibe
    Created on : 02-feb-2017, 13:01:55
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
        <%
            String param=request.getParameter("parametro");
            String supercaja=request.getParameter("caja");
            String[] provincias=request.getParameterValues("provincias");
        %>
        <h2>Viene por GET</h2>
        <%=param%>
        <h2>Viene por POST</h2>
        <%=supercaja%>
        Provincias seleccionadas
        <%
            for (int p=0;p<provincias.length;p++){
            out.println(provincias[p]);
            }
        %>
        <br>Provincias seleccionadas foreach
        <%
            for (String p:provincias){
            out.println(p);
            }
        %>
    </body>
</html>
