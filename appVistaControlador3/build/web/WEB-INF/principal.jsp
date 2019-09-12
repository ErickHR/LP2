<%-- 
    Document   : principal
    Created on : 12/09/2019, 09:57:23 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <style>
        img{
            height: 450px;
        }
    </style>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar w/ text</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pricing</a>
            </li>
          </ul>
          <span class="navbar-text">
            Navbar text with an inline element
          </span>
        </div>
      </nav>
        
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="data:image/jpeg;base64,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" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://cdn.pixabay.com/photo/2018/03/03/03/11/tree-3194803__340.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://cdn.pixabay.com/photo/2017/03/27/16/50/beach-2179624__340.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
            <%
        //obtemner valor de la variabl saludo
            //viene del servelt
            String saludo = (String)request.getAttribute("saludos");
            %>
        <h2><%=saludo%></h2>
    </body>
</html>
