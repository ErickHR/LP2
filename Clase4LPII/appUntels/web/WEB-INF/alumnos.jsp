<%-- 
    Document   : principal
    Created on : 18/09/2019, 02:06:20 PM
    Author     : BLANCO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.bean.Alumno"%>
<%@page import="modelo.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
                overflow: hidden;
                background-color: #333;
            }

            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .topnav a.active {
                background-color: #4CAF50;
                color: white;
            }
            /*menu vertical*/
            .vertical-menu {
                width: 200px; /* Set a width if you like */
            }

            .vertical-menu a {
                background-color: #eee; /* Grey background color */
                color: black; /* Black text color */
                display: block; /* Make the links appear below each other */
                padding: 12px; /* Add some padding */
                text-decoration: none; /* Remove underline from links */
            }

            .vertical-menu a:hover {
                background-color: #ccc; /* Dark grey background on mouse-over */
            }

            .vertical-menu a.active {
                background-color: #4CAF50; /* Add a green color to the "active/current" link */
                color: white;
            }
        </style>
    </head>
    <body>
        <%
            Alumno a = (Alumno) request.getSession().getAttribute("alumnox");
            ArrayList<Alumno> lista = (ArrayList<Alumno>) request.getAttribute("alumnosx");
        %>
        <div class="topnav">
            <a class="active" href="#home">Home</a>
            <a href="#news">News</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <a href="#about"><%=a.getNombre() + " " + a.getApaterno() + " " + a.getAmaterno()%></a>
            <a href="cerrarsesion">Cerrar Sesion</a>
        </div>
            <h1>::alumnos</h1>
            
            <table>
                
                <thead>
                    <tr>

                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>foto</th>
                        <th>Direccion</th>

                    </tr>
                </thead>
                <tbody>
                    <% for(Alumno x : lista){%>
                    <tr>

                        <td><%=x.getCodal()%></td>
                        <td><%=x.getNombre()%></td>
                        <td><%=x.getApaterno()%></td>
                        <td><%=x.getAmaterno()%></td>
                        <td><img src="fotos/<%=x.getFoto()%>" width="45" height="50"></td>
                        <td><%=x.getDireccion()%></td>
                    </tr>
                    <%}%>
                </tbody>
                
            </table>
    </body>
</html>
