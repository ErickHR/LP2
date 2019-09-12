<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function mensaje(){
            setTimeout(() => alert("Javascript"), 3000)
        }
        function myfuncion(){
            alert("Javascript")
        }
    </script>
    <body>
        <button onclick="mensaje()">Ver mensaje</button>
    </body>
</html>
