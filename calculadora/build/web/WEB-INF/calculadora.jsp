<%-- 
    Document   : principal
    Created on : 12/09/2019, 09:57:23 AM
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
        <form action="ServletUsuario" >
            numero1 <input type="text" name="numero1">
            <br>
            <br>
            numero2 <input type="text" name="numero2">
            <br>
            <br>
            Operacion <select name="lista" size="1" style="width: 100px">

                    <option name="suma">+</option>
                    <option name="resta">-</option>
                    <option name="multiplicacion">*</option>
                    <option name="division">/</option>

            </select>
            <br>
            <br>
            <input type="submit" value="Resultado"> 
        </form>
    </body>
</html>
