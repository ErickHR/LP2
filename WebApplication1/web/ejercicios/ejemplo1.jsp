<%-- 
    Document   : ejemplo1
    Created on : 12/09/2019, 08:22:26 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/estilos.css">
    </head>
    <body>
        
        
        <%
        
            String saludo = "Hola Erick";
            
            
        %>
        
        <h2 id="saludo"> <%=saludo%> </h2>
        
    </body>
</html>
