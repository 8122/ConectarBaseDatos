<%-- 
    Document   : conexionBD
    Created on : 06-oct-2016, 13:11:03
    Author     : alumno
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>conexionBD</title>
    </head>
    <body>
        <%
            try {
                String bd = "spacex";
                String login = "root";
                String password = "";
                String url = "jdbc:mysql://localhost:3306/" + bd;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection(url, login, password);
                
                if (conn != null) { 
        %>
                    <p><b>Conexión lograda</b></p>
        <%
                } else { 
        %>
                    <p>No se ha establecido la conexión</p>
        <%
                }
            } catch (SQLException ex) {
        %> 
                <p>ERROR SQLException</p>
        <%
            } catch (Exception e) {
        %>
                <p>ERROR Exception</p>
        <%
            }
        %>
        <p>adios</p>
    </body>
</html>
