<%-- 
    Document   : ejer1
    Created on : 12/09/2019, 08:46:27 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function validar(){
            let nom = document.frmx.txtnom.value;
            if(nom==""){
                alert("ingrese datos");
                return false;
            }
            return true;
            
            
            
        }
    </script>
    <body>
        <form action="recibeNombre.jsp" method="post" name="frmx">
            Nombre <input type="text" id="txtnom" name="txtnom">
            <br>
            <input type="submit" value="Enviar" onclick="return validar()">
        </form>
    </body>
</html>
