<%-- 
    Document   : index
    Created on : 10/11/2020, 10:08:29 PM
    Author     : TopVargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <div class="container-fluid bg-dark">
        <div class = "container mt-4 col-lg-4">
            <div class = "card col-sm-10">
                <div class = "card-body bg-">
                    <form class = "form-sign" action = "Validar" method= "POST" autocomplete="off">
                        <div class = "form-group text-center">
                            <h3>Login</h3>
                            <img src="img/DEAL.jpg" alt="200" width="200"/>
                            <label>Bienvenidos al Chapinfy</label>
                        </div>
                        <div class = "form-group">
                            <label>Usuario: </label>
                            <input type = "text" name = "txtuser" class="form-control" placeholder="Ingrese el usuario">
                        </div>
                        <div class = "form-group">
                            <label>Contraseña: </label>
                            <input type = "password" name = "txtpass" class="form-control" placeholder="Ingrese la contraseña">
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class ="btn btn-primary btn-b">
                    </form>
                </div>
            </div>
        </div>  
        </div>
        
        <li class="nav-item active">
                        <a style="margin-left: 12px; border: none" class="btn btn-outline-light" href="Taquilla.jsp" target="myFrame">
                            <input type="submit" name="menu" Value="Sistema de Ventas" class="btn btn-outline-light"></a>
                    </li>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
