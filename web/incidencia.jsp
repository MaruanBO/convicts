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
            <h5 class="card-title text-center">Incidencia convicto: ${persona.getNombre()}</h5>
            <form action="Controlador" method="POST">
                  <div class="form-group">
                   <label for="id">Id:</label>
                    <input class="form-control" type="text"  name="txtid"  pattern="[0-9]{1,2}" value="${persona.getId()}">
                  </div>
                <div class="form-group">
                   <label for="Sentencia">Sentencia:</label>
                <input class="form-control" type="text" name="txtincidencia"   pattern="[A-Za-z]{1,20}" required value="${persona.getSentencia()}">
                </div>
                <input type="submit"  name="accion" value="Cambiar incidencia" class="btn btn-success">
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
