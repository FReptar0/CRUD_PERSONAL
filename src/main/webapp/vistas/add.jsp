    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!-- CSS only -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                crossorigin="anonymous">
            <title>Personas</title>
        </head>

        <body>
            <div class="container position-absolute top-50 start-50 translate-middle">
                <div class="col-lg-6 position-absolute top-50 start-50 translate-middle">
                    <h1>Agregar Persona</h1>
                    <form action="Controlador">
                        <label class="mb-3">DNI:</label>
                        <input class="form-control mb-3" type="text" name="txtDni">
                        <label class="mb-3">Nombres:</label>
                        <input class="form-control mb-3" type="text" name="txtNom">
                        <input class="btn btn-success" type="submit" name="accion" value="Agregar">
                        <a href="Controlador?accion=listar" class="btn btn-outline-danger">Regresar</a>
                    </form>
                </div>

            </div>
        </body>

        </html>