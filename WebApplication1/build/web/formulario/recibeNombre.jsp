<%-- 
    Document   : recibeNombr
    Created on : 12/09/2019, 08:51:42 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recibe datos del formulario</h1>
        <%
        
            String nom = request.getParameter("txtnombre");
            
        %>
        <p><%=nom%></p>
    </body>
</html>
