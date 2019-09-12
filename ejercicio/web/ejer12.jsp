<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        
        let num1 = document.getElementById("txt1").value 
        let num2 = parseFloat( formx.texto2.value );
        
        //function NoesNumero(){
          //  return isNaN(num1) || isNaN(num2)
        //}
        
        function suma(){
            document.getElementById('resultado').value = num1 + num2;
        }
        
        function resta(){
            document.getElementById('resultado').value = num1 - num2;
        }
        
        function multiplicacion(){
            document.getElementById('resultado').value = num1 * num2;
        }
        
        function division(){
            document.getElementById('resultado').value = num1 / num2;
        }
        
    </script>
    <body>
        
        <form name="formx">
            Num1 <input type="text" id="txt1" name="texto1">
            <br>
            Num2 <input type="text" name="texto2" id="txt2">
            <br><br>

            <input type="button" value=" Suma " onclick="suma()">
            <input type="button" onclick="resta()" value=" - ">
            <input type="button" onclick="multiplicacion()" value=" * ">
            <input type="button" onclick="division()" value=" / ">
            <br><br>

            Resultado <input type="text" name="Resultado" id="resultado">
        </form>

    </body>
</html>
