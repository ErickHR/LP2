<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eje1-funcion write</title>
        <script>
            function saludo(nombre, color){
                document.write("<h1 style= color:"+color+">"+nombre+"</h1>");
            }
        </script>
    </head>
    <body>
        <script>
            let nombre = "erick";
            let color = "red";
            saludo(nombre, color);
        </script>
    </body>
</html>
