<%-- 
    Document   : Comercio
    Created on : 13/11/2020, 02:33:15 AM
    Author     : TopVargas
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                            
                            <div class="p-3 mb-2 bg-dark text-light">DATOS DE LA SOLICITUD REGISTRADA</div>
                            <div>
                                <img src="img/MAPA.jpg" alt="200" width="230"/>
                            </div>
                        </div>
                                           
              
                <form class="form-sign" action="Controlador1" method="POST">
                <div class="card-body">
                <div class="container text-center h-40 bg-light d-flex justify-content-center align-items-center">

            </div>
            <div class="card-body">
                <%
                         
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
                String id = request.getParameter("id");
                int idformulario = Integer.parseInt(id);
                String tel = request.getParameter("tel");
        
                        try{
                        Class.forName("org.postgresql.Driver");
                        con=DriverManager.getConnection("jdbc:postgresql://br2ckileguu3j289ceqd-postgresql.services.clever-cloud.com:5432/br2ckileguu3j289ceqd", 
                    "uz12ygmfpezutoigizzh", "UiMW2WrP7I0D0TQRPD3I");
                        st=con.createStatement();
                        rs=st.executeQuery("SELECT * FROM formulario where idformulario=idformulario");
                        if(rs.next()){
                     %>
                     <div class="form-group">
                    <label>Número de solicitud</label>
                     <input type="text" class="form-control" id="idfor" name="idfor"  value="<%=rs.getString(1)%>"required="required" readonly>
                        </div>
                    <div class="form-group">
                    <label>Nombre del Comercio</label>
                     <input type="text" class="form-control" id="nombre" name="nombre"  value="<%=rs.getString(2)%>"required="required" readonly>
                        </div>
                    <div class="form-group">
                        <label>Ofrece Bienes y/o servicios</label>
                        <input type="text" class="form-control" name="Correo" value="<%=rs.getString(3)%>" readonly>
                    </div>
                        <div class="form-group">
                        <label>Giro principal de negocio</label>
                        <input type="text" class="form-control" name="Telefono" value="<%=rs.getString(4)%>" readonly>
                    </div>
                        <div class="form-group">
                        <label>Correo Electrónico</label>
                        <input type="text" class="form-control" name="NombreOficina" value="<%=rs.getString(5)%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Nombres del Afiliado</label>
                        <input type="text" class="form-control" name="Empleado" value="<%=rs.getString(6)%>" readonly>
                    </div>
                        <div class="form-group">
                        <label>Apellidos del Afiliado</label>
                        <input type="text" class="form-control" name="Detalle" value="<%=rs.getString(7)%>" readonly>
                    </div>
                   
                        <div class="form-group">
                        <label>Correo Electrónico</label>
                        <input type="text" class="form-control" name="Detalle" value="<%=rs.getString(8)%>" readonly>
                    </div>
                    
                        <div class="form-group">
                        <label>Teléfono</label>
                        <input type="text" class="form-control" name="Detalle" value="<%=rs.getString(9)%>" readonly>
                    </div>
                    
                    <div class="form-group">
                        <label>Fecha de Nacimiento</label>
                        <input type="text" class="form-control" name="Detalle"  value="<%=rs.getString(10)%>" readonly>
                    </div>
                 <div class="form-group">
                        <label>¿La solicitud será...?</label>
                        <div class="d-flex">
                            <div class="col-sm-2">
                        <input type="submit" name="accion" Value="Aceptada" class="btn btn-primary">
                            </div>
                            <div class="col-sm-2">
                        <input type="submit" name="accion" Value="Rechazada" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                
                <%
                            }
                            }catch (Exception e) {
                            out.print("error mysql "+e);

                                }
                        %>
                
            </div>
            </div>
                </form>
        
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
