<%-- 
    Document   : cons
    Created on : 26/09/2019, 09:16:28 AM
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
        <%
            String escuela =(String) request.getAttribute("escuela");
            String semestre =(String) request.getAttribute("semestre");
            String curso =(String) request.getAttribute("curso");
        %>
        
        <h1>No registra notas en <%=escuela%>, año<%=semestre%> en el curso <%=curso%></h1>
    </body>
</html>
