<%-- 
    Document   : basedatos
    Created on : 06-feb-2017, 19:13:53
    Author     : jose
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo de acceso a base de datos</h1>
        <%
        Connection conexion=null;
        Statement sentencia=null;
        ResultSet registros=null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://192.168.2.52/tienda-virtual";
            String user="root";
            String pass="tomas";
            conexion=DriverManager.getConnection(url,user,pass);
            out.println("Conexion establecida");
            String sql="SELECT nombre,pvp from articulos";
            sentencia=conexion.createStatement();
            registros=sentencia.executeQuery(sql);
            out.println("Consulta lanzada");
            
        }catch(SQLException e)
        {
            out.println("Error en BBDD:"+e.getMessage());
        }
        
        %>
        
        <table border="1">
            <tr>
                <th>
                    Nombre
                </th>
                <th>
                    Precio
                </th>
            </tr>
                <%
                while (registros.next())
                {
                    out.println("<tr>");
                    out.println("<td>"+registros.getString("nombre")+"</td>");
                    out.println("<td>"+registros.getFloat("pvp")+"</td>");
                }
                sentencia.close();
                conexion.close();
                %>
        </table>
    </body>
</html>
