<%-- 
    Document   : CrearSesion
    Created on : 02-feb-2017, 13:35:57
    Author     : jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Creacion de una variable de sesion</h1>
        <%=session.getId()%>
        <% String nombrecompleto="Tomás Sánchez Paredes";
        session.setAttribute("nombre", nombrecompleto);
        int socio=12345;
        session.setAttribute("socio", socio);
        
        application.setAttribute("UNIVERSAL", "JAMON");
        %>
        <a href="leerSesion.jsp">Leer variable de sesion</a>
    </body>
</html>
