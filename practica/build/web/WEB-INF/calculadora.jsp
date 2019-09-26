<%-- 
    Document   : calculadora
    Created on : 26/09/2019, 08:43:14 AM
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
        
        function calcular(valor){
            
            let num1 = document.getElementById("num1").value;
            let num2 = document.getElementById("num2").value;
            let cal = " "+ num1 + valor.value + num2
            
            document.getElementById("res").value = eval(cal)
            
        }
        
    </script>
    <body>
        <h1>Calculadora</h1>
        Numero 1<input type="text" name="numero1" id="num1"><br/>
        Numero 2<input type="text" name="numero2" id="num2"><br/>
        <input type="button" value="+" onclick="calcular(this)">
        <input type="button" value="-" onclick="calcular(this)">
        <input type="button" value="*" onclick="calcular(this)">
        <input type="button" value="/" onclick="calcular(this)"><br/>
        Resultado<input type="text" name="resultado" id="res"><br/>
    </body>
</html>
