<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        let cursos = []
        function seleccionarJava(){
            if(document.getElementById("Java").checked)
                cursos.push("Java")
            else
                cursos.forEach( (item, indice) => {
                    if(item == "Java")
                        cursos.splice(indice, 1)
                })
            
            document.getElementById('textArea').value = cursos
        }
        function seleccionarHtml(){
            if(document.getElementById("Html").checked)
                cursos.push("Html")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Html")
                        cursos.splice(indice, 1)
                })
            
            document.getElementById('textArea').value = cursos
        }
        function seleccionarJavaScript(){
            if(document.getElementById("Java Script").checked)
                cursos.push("Java Script")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Java Script")
                        cursos.splice(indice, 1)
                })
            
            document.getElementById('textArea').value = cursos
        }
        function seleccionarBasedeDatos(){
            if(document.getElementById("Base de Datos").checked)
                cursos.push("Base de Datos")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Base de Datos")
                        cursos.splice(indice, 1)
                })
            
            document.getElementById('textArea').value = cursos
        }
        function seleccionarDiseñodeSistemas(){
            if(document.getElementById("Diseño de Sistemas").checked)
                cursos.push("Diseño de Sistemas")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Diseño de Sistemas")
                        cursos.splice(indice, 1)
                })
            
            document.getElementById('textArea').value = cursos
        }
    </script>
    <body>
        <input type="checkbox" onclick="seleccionarJava()" id="Java"> Java
        <br>
        <input type="checkbox" onclick="seleccionarHtml()" id="Html"> Html
        <br>
        <input type="checkbox" onclick="seleccionarJavaScript()" id="Java Script"> JavaScript
        <br>
        <input type="checkbox" onclick="seleccionarBasedeDatos()"id="Base de Datos"> Base de Datos
        <br>
        <input type="checkbox" onclick="seleccionarDiseñodeSistemas()" id="Diseño de Sistemas"> Diseño de Sistemas
        <br>
        <br>
        Cursos seleccionados
        
        <br>
        <br>
        <textarea cols="20" rows="5" wrap="hard" disabled="yes" id="textArea"></textarea>
        
    </body>
</html>
