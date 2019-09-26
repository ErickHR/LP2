<%-- 
    Document   : listaDeCursos
    Created on : 26/09/2019, 08:52:37 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <script>
        
        function insertar(){
            
            let lista = document.getElementsByClassName("check");
            
            let arreglo = ""
            
            for( let i = 0; i < lista.length; i++ ){
                
                if(lista[i].checked){
                    arreglo += lista[i].value + "\n";
                }
                
            }
            
            document.getElementById("text").value = arreglo;
            
        }
        
    </script>
    
    <body>
        <h1>Seleccione Cursos</h1>
        
        <form onclick="insertar()">
            
            <input type="checkbox" class="check" value="JavaScript">JavaScript<br/>
            <input type="checkbox" class="check" value="Java">Java<br/>
            <input type="checkbox" class="check" value="UML">UML<br/>
            <input type="checkbox" class="check" value="SQL Server">SQL Server<br/>

            <textarea cols="20" rows="5" id="text"></textarea>
            
        </form>
        
    </body>
</html>
