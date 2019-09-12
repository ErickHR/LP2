<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>While</title>
    </head>
    <body>
        <table border="1">
            <script>
                let num, suma = 0;
                while(1){
                    num = +prompt("Ingrese nota: ")
                    if(isNaN(num))
                        alert("Debe ingresar un valor numerico")
                    else{
                        if(num == -1){
                            document.write("<tr><td>Total:"+suma+"</td></tr>")
                            break;
                        }
                        else{
                            document.write("<tr><td>"+num+"</td></tr>")
                            suma += num;
                        }
                    }
                }
            </script>
        </table>
    </body>
</html>
