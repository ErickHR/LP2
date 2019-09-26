<%-- 
    Document   : consulta
    Created on : 26/09/2019, 09:00:39 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="cons" method="post">
            <table>
                <tr>

                    <td> Seleccione Escuela</td>
                    <td> 
                        <select name="escuela">

                            <option value="Ing. Sistemas"> Ing. Sistemas </option>
                            <option value="Ing. Electronica"> Ing. Electronica </option>
                            <option value="Ing. Mecanica"> Ing. Mecanica </option>
                            <option value="Ing. Ambiental"> Ing. Ambiental </option>
                            <option value="Administracion"> Administracion </option>

                        </select>
                    </td>
                    <td> </td>
                    <td>  </td>
                    <td> Seleccione Semestre </td>

                    <td> 
                        <select name="semestre">

                            <option value="2015"> 2015 </option>
                            <option value="2016"> 2016 </option>
                            <option value="2017"> 2017 </option>
                            <option value="2018"> 2018 </option>
                            <option value="2019"> 2019 </option>

                        </select>
                    </td>


                </tr>
                <tr>

                    <td>Curso</td>
                    <td > 
                        <select name="curso">

                            <option value="Matematica I"> Matematica I </option>
                            <option value="Fisica III"> Fisica III </option>
                            <option value="Base de Datos"> Base de Datos </option>
                            <option value="Economia"> Economia </option>
                            <option value="Lenguaje"> Lenguaje </option>

                        </select>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><input type="submit" value="Consultar"></td>

                </tr>
                <tr></tr>
            </table>
        </form>
    </body>
</html>
