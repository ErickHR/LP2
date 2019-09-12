<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function comprobar(){
            let num = parseFloat(formx.numero.value)
            
            alert(num)
            
            if(isNaN(num)){
                alert("Debe ingresar un valor númerico")
                formx.numero.value=""
                formx.numero.focus()
            }else
                alert("correcto")
            
        }
    </script>
    <body>
        <form name="formx">
            Ingrese número <input type="text" name="numero">
            <br>
            <input type="button" value="Comprobar" onclick="comprobar()">
        </form>
    </body>
</html>
