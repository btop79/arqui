<%-- 
    Document   : SolicitudComercio
    Created on : 13/11/2020, 03:21:18 AM
    Author     : TopVargas
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Solicitudes</title>
    </head>

    <body>
          
                <div class="card-body">
                    <form class="form-sign" action="Controlador1" method="POST" autocomplete="off">
                        <div class="form-group text-center">
                            
                            <div class="p-3 mb-2 bg-dark text-light">SOLICITUD DEL COMERCIO</div>
                            <div>
                            <label>Listado de las Solicitudes de los formularios ingresados</label>
                            </div>
                        </div>
                                           
            <div class="container text-center h-50 bg- d-flex justify-content-center align-items-center">
                <img src="img/MAPA.jpg" alt="200" width="200"/>
                        
            </div>
              
            <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope ="col">Nombre del Comercio</th>
                        <th scope ="col">Giro del Negocio</th>
                        <th scope ="col">Correo del Comercio</th>                        
                        <th scope ="col">Nombre del Titular</th>
                        <th scope ="col">Apellido del Titular</th>
                        <th scope ="col">Teléfono del Titular</th>
                        <th scope ="col">Información</th>
                    </tr>
                </thead>
                <tbody>
                <%
                         
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
        
                        try{
                        Class.forName("org.postgresql.Driver");
                        con=DriverManager.getConnection("jdbc:postgresql://br2ckileguu3j289ceqd-postgresql.services.clever-cloud.com:5432/br2ckileguu3j289ceqd", 
                    "uz12ygmfpezutoigizzh", "UiMW2WrP7I0D0TQRPD3I");
                        st=con.createStatement();
                        rs=st.executeQuery("SELECT * FROM formulario");
                        while(rs.next()){
                     %>
                     <tr>
                        <td scope="row"><%=rs.getString(2)%></td>
                        <td scope="row"><%=rs.getString(4)%></td>
                        <td scope="row"><%=rs.getString(5)%></td>
                        <td scope="row"><%=rs.getString(6)%> </td>
                        <td scope="row"><%=rs.getString(7)%> </td>
                        <td scope="row"><%=rs.getString(9)%> </td>
                        <td scope="row"><%=rs.getString(11)%> </td>
                        
                         </tr>
                    <%
                            }
                            }catch (Exception e) {
                            out.print("error mysql "+e);

                                }
                        %>
                </tbody>
            </table>
            </div>
        
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
