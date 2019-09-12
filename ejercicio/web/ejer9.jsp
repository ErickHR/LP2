<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--aqui hay erro?????????-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
            let num = 0;
            function mensaje(){
                
                let intervalo = setInterval(alumno, 2000)
                
                setTimeout(() => clearInterval(intervalo), 7000)
                
            }

            function alumno(){
                num++
                let nombre = prompt("Ingrese nombre y apellido: ");
                alert(nombre + " veces: " + num);
            }
        </script>
    </head>
    <body onload="mensaje()">
        
    </body>
</html>
