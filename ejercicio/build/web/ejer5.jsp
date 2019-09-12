<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <script>
                let filas = prompt("Ingrese número de filas:")
                let color = prompt("Ingrese color: ")

                for(let i = 0; i < filas; i++){

                    document.write("<tr><td style=background:"+color+">"+(i+1)+"</td><td>"+(i+1)*10+"</td></tr>")

                }

            </script>
        </table>
    </body>
</html>
