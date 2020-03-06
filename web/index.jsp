<%-- 
    Document   : index
    Created on : 05-mar-2020, 11:10:13
    Author     : Maruan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Crud Oracle</title>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <br><br>
<div class="container">
            <div class="card text-center">
            <div class="card-header">
            Crud Oracle
            </div>
            <div class="card-body">
            <h5 class="card-title">Convicts</h5>
            <table class="table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Fecha nacimiento</th>
                        <th>Apellido</th>
                        <th>Nombre</th>
                        <th>Genero</th>
                        <th>Foto</th>
                        <th>Pais</th>
                        <th>Nacionalidad</th>
                        <th>Editar</th>
                        <th>Delete</th>
                        <th>Incidencia<th>
                    </tr>                 
                </thead>
            
                <tbody>
                <c:forEach var="dato" items="${datos}">
                    <tr>
                        <td>${dato.getId()}</td>
                        <td>${dato.getFecha_nacimiento()}</td>   
                        <td>${dato.getApellido()}</td>
                        <td>${dato.getNombre()}</td>
                        <td>${dato.getGenero()}</td>
                        <td>${dato.getFoto()}</td>
                        <td>${dato.getPais()}</td>
                        <td>${dato.getNacionalidad()}</td>                    
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden"  name="id" value="${dato.getId()}"> 
                                <input type="submit" name="accion" value="Editar" class="btn btn-primary" > 
                            </form>                        
                        </td>
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden"  name="id" value="${dato.getId()}"> 
                                <input type="submit" name="accion" value="Delete" class="btn btn-danger">
                            </form>                        
                        </td>
                        
                        <td>
                            <form action="Controlador" method="POST">
                                <input type="hidden"  name="id" value="${dato.getId()}"> 
                                <input type="submit" name="accion" value="Incidencia" class="btn btn-warning">
                            </form>                        
                        </td>
                    </tr>                
                </c:forEach>
                </tbody>
            </table>  
            <form action="Controlador" method="POST" class="text-center">
                <input type="submit" name="accion" value="Listar" class="btn btn-info">      
                <input type="submit" name="accion" value="Nuevo" class="btn btn-primary">           
            </form>
            </div>             
            <div class="card-footer text-muted">
                Crud Oracle
            </div>               
            </div>
        </div> 
    </body>
</html>
