<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        let cursos = []
        
        function seleccionados(){
            seleccionarBasedeDatos();
            seleccionarDiseñodeSistemas()
            seleccionarHtml()
            seleccionarJava()
            seleccionarJavaScript()
            document.getElementById('textArea').value = cursos
        }
        
        function seleccionarJava(){
            if(document.getElementById("Java").checked && !cursos.find((item)=>item=="Java"))
                cursos.push("Java")
            else
                cursos.forEach( (item, indice) => {
                    if(item == "Java")
                        cursos.splice(indice, 1)
                })
        }
        function seleccionarHtml(){
            
            if(document.getElementById("Html").checked && !cursos.find((item)=>item=="Html"))
                cursos.push("Html")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Html")
                        cursos.splice(indice, 1)
                })
            
        }
        function seleccionarJavaScript(){
            if(document.getElementById("Java Script").checked && !cursos.find((item)=>item=="Java Script"))
                cursos.push("Java Script")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Java Script")
                        cursos.splice(indice, 1)
                })
            
        }
        function seleccionarBasedeDatos(){
            if(document.getElementById("Base de Datos").checked && !cursos.find((item)=>item=="Base de Datos"))
                cursos.push("Base de Datos")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Base de Datos")
                        cursos.splice(indice, 1)
                })
            
        }
        function seleccionarDiseñodeSistemas(){
            if(document.getElementById("Diseño de Sistemas").checked && !cursos.find((item)=>item=="Diseño de Sistemas"))
                cursos.push("Diseño de Sistemas")
            else
                cursos.forEach( (item, indice) => 
                    {
                    if(item == "Diseño de Sistemas")
                        cursos.splice(indice, 1)
                })
            
        }
    </script>
    <body>
        <input type="checkbox" id="Java"> Java
        <br>
        <input type="checkbox" id="Html"> Html
        <br>
        <input type="checkbox" id="Java Script"> JavaScript
        <br>
        <input type="checkbox" id="Base de Datos"> Base de Datos
        <br>
        <input type="checkbox" id="Diseño de Sistemas"> Diseño de Sistemas
        <br>
        <input type="button" onclick="seleccionados()" value="Procesar">
        <br>
        <textarea cols="20" rows="5" wrap="hard" disabled="yes" id="textArea"></textarea>
        
    </body>
</html>
