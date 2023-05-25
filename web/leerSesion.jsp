<%-- 
    Document   : leerSesion
    Created on : 02-feb-2017, 13:43:44
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
        <h1>Leyendo variable de sesion</h1>
        <%=session.getAttribute("nombre")%>
        <%=session.getAttribute("socio").toString()%>
        <h1>Esto es una variable de aplicacion</h1>
        <%=application.getAttribute("UNIVERSAL")%>
        
    </body>
</html>
