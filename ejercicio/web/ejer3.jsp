<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>funcion eval</title>
    </head>
    <script>
        function evaluar(){
            document.getElementById("2").value = eval(document.getElementById("1").value);
        }
    </script>
    <body>
        <form name="formx">
            Ingrese expresión matemática <input type="text" name="expresion" id="1">
            <br>
            El resultado <input type="text" name="resultado" id="2">
            <br>
            <input type="button" value="Evaluar" onclick="evaluar()" >
        </form>
    </body>
</html>
