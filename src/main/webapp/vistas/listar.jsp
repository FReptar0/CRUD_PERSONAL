<%@page import="java.util.Iterator" %>
    <%@page import="Modelo.Persona" %>
        <%@page import="java.util.List" %>
            <%@page import="ModeloDAO.PersonaDAO" %>
                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <!-- CSS only -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                            crossorigin="anonymous">
                        <title>Personas</title>
                    </head>

                    <body>
                        <div class="container">
                            <h1 class="mt-5">Personas</h1>
                            <a class="btn btn-success mb-2" href="Controlador?accion=add">Agregar Nuevo</a>

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">DNI</th>
                                        <th class="text-center">NOMBRES</th>
                                        <th class="text-center">ACCIONES</th>
                                    </tr>
                                </thead>
                                <% PersonaDAO dao=new PersonaDAO(); List<Persona>list=dao.listar();
                                    Iterator<Persona>iter=list.iterator();
                                        Persona per=null;
                                        while(iter.hasNext()){
                                        per=iter.next();

                                        %>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">
                                                    <%= per.getId()%>
                                                </td>
                                                <td class="text-center">
                                                    <%= per.getDni()%>
                                                </td>
                                                <td class="text-center">
                                                    <%= per.getNom()%>
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-warning"
                                                        href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                                                    <a class="btn btn-danger"
                                                        href="Controlador?accion=eliminar&id=<%= per.getId()%>">Remove</a>
                                                </td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                            </table>

                        </div>
                    </body>

                    </html>