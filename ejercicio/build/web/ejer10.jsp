<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        
        let lahora
        function Activar(){
            let tiempo = new Date()
            let hora = tiempo.getHours()
            let minuto = tiempo.getMinutes()
            let segundos = tiempo.getSeconds()
            
            if(segundos < 10) segundos = '0' + segundos
            if(minuto < 10) minuto = '0' + minuto
            if(hora < 10) hora = '0' + hora
            
            document.getElementById('reloj').value = hora+":"+minuto+":"+segundos
            document.getElementById('btnActivar').disabled = true
            
            lahora = setTimeout(Activar, 1000)
            
        }
        
        function Detener(){
            clearTimeout(lahora)
            document.getElementById('btnActivar').disabled = false
        }
        
    </script>
    <body>
        <input type="text" id="reloj">
        <br>
        <input type="button" value="ACTIVAR" id="btnActivar" onclick="Activar()">
        <input type="button" value="DETENER" id="btnDetener" onclick="Detener()">
    </body>
</html>
