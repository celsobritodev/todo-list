<%-- 
    Document   : index
    Created on : 12 de fev. de 2023, 09:47:27
    Author     : Usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TodoList App</title>
        <!-- importar o bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <body class="container mt-5">
        <h1>TodoList App!</h1>

        <button class="btn btn-success mb-4" data-bs-toggle="modal" data-bs-target="#createModal">+ Adicionar Tarefa</button>
        <table class="table" >
            <thead>
                <tr>
                    <th>Tarefa</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="t">
                    <tr>
                        <td><c:out value="${t.title}" /></td>
                    </tr>
                </c:forEach>
            </tbody>  
        </table>
        <!-- Modal  create -->
        <div class="modal fade" id="createModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title fs-5" >Adicionar tarefa</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="/todo-list/">
                            <div class="mb-3">
                                <label for="title" class="form-label">Titulo da Tarefa</label>
                                <input class="form-control" id="title" name="title">
                            </div>
                           <input type="hidden" name="action" value="create" /> 
                           <button type="submit" class="btn btn-success">Adicionar</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>  


    </body>
</html>
