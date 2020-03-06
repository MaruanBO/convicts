<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <div class="container">
            <div class="card">
            <div class="card-header text-center">
            Crud Oracle
            </div>
            <div class="card-body">
            <h5 class="card-title text-center">Editar convicto ${persona.getNombre()}</h5>
            <form action="Controlador" method="POST">
                  <div class="form-group">
                   <label for="id">Id:</label>
                    <input class="form-control" type="text"  name="txtid"  pattern="[0-9]{1,2}" title="Solo numeros, maximo 2 digitos" value="${persona.getId()}">
                  </div>
                <div class="form-group">
                   <label for="nombre">Nombre:</label>
                <input class="form-control" type="text" name="txtnombre"   pattern="[A-Za-z]{1,20}" title="Solo letra, 20 caracteres"  required value="${persona.getNombre()}">
                </div>
                <div class="form-group">
                   <label for="nac">Fecha nacimiento:</label>
               <input class="form-control" type="text"  name="txtfecha" required  pattern="\d{1,2}/\d{1,2}/\d{2}" title="Solo una fecha, eg: 12/12/98" value="${persona.getFecha_nacimiento()}">
               </div>
                   
                <div class="form-group">
                   <label for="ap">Apellido:</label>
                 <input class="form-control" type="text" name="txtapellido" pattern="[A-Za-z]{1,20}" title="Solo letras, 20 caracteres" required value="${persona.getApellido()}" >
                </div>
                <div class="form-group">
                   <label for="id">Foto:</label>
                 <input class="form-control" type="text" name="txtfoto" pattern="[A-Za-z]{1,50}" title="Introduce una url correcta"required value="${persona.getFoto()}">
                </div>
                <div class="form-group">
                   <label for="id">Nacionalidad:</label>
                 <input class="form-control" type="text" name="txtnacionalidad"  pattern="[A-Za-z]{1,30}" required value="${persona.getNacionalidad()}">
                </div>
                <div class="form-group">
                   <label for="id">Genero:</label>
                 <input class="form-control" type="text" name="txtgenero" pattern="[A-Za-z]{1}" title="Solo letras" required value="${persona.getGenero()}" >
                 </div>
                 <div class="form-group">
                   <label for="id">Pais:</label>
                 <input class="form-control" type="text" name="txtpais" pattern="[A-Za-z]{1,20}" title="Solo letras" required value="${persona.getPais()}"><br>
                 </div>
                <input type="submit"  name="accion" value="Actualizar" class="btn btn-success">
            </form><br>
            <form action="Controlador" method="POST">
                <input type="submit" name="accion" value="Atras" class="btn btn-primary">
            </form>   
            </div>             
            <div class="card-footer text-muted text-center">
                Crud Oracle
            </div>               
            </div>
        </div>       
    </body>
</html>
