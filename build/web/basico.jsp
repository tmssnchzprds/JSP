<%-- 
    Document   : basico
    Created on : 02-feb-2017, 12:14:46
    Author     : jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@page errorPage="error.jsp" %>
<%@page import="clases.Prueba" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:out value="123"></c:out>
        <h1>Hello World!</h1>
        <%! //DECLARACION
            float sueldo=1500;
        %>
        <%  //SCRIPTLETS
        int contador=1;
        String nombre="Toby";
        out.println(nombre);
        for (int i=0;i<=6;i++)
        {
            out.println("Contador vale "+i);
        }
        
        Prueba prueba=new Prueba();
        int resultado=prueba.suma(14, 18);
        %>
        <h3>
        <%=resultado //EXPRESIONES
        %>
        <h3>
            <h2>Lo que sale abajo es un trozo de HTML</h2>
            <%@include file="trozo.html" %>
            <h2>Lo que sale abajo es un trozo de JSP</h2>
            <%@include file="trozo.jsp" %>
            <br><a href="recibe.jsp?parametro=12345">Enlace por GET</a>
            <form method="post" action="recibe.jsp">
                caja <input type="text" name="caja">
                <select name="provincias" multiple>
                    <option value="1">Badajoz</option>
                    <option value="2">Caceres</option>
                </select>
                <button>Enviar</button>
            </form>
    </body>
</html>
