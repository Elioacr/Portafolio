<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Proyecto</title>
    
    <link rel="shortcut icon" href="/images/minilogo.png" type="image/x-icon">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card" id="card">
                    <div class="card-header text-center">
                        <h2>Formulario Proyecto</h2>
                    </div>
                    <div class="card-body">
                        <form:form action="/nuevo" method="POST" modelAttribute="proyecto" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <div class="form-group">
                                        <form:label path="title">Titulo:</form:label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <form:input path="title" type="text" class="form-control" required="true" />
                                        </div>
                                        <div>
                                            <form:errors path="title" class="alert alert-danger"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="form-group">
                                        <form:label path="description">Descripción:</form:label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <form:input path="description" type="text" class="form-control" required="true" />
                                        </div>
                                        <div>
                                            <form:errors path="description" class="alert alert-danger"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="form-group">
                                        <form:label path="url">Url:</form:label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-city"></i></span>
                                            </div>
                                            <form:input path="url" type="text" class="form-control" required="true" />
                                        </div>
                                        <div>
                                            <form:errors path="url" class="alert alert-danger"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <div class="form-group">
                                        <form:label path="imageUrl">Imagen</form:label>
									    <div class="input-group mb-4">
									        <div class="input-group-prepend">
									            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
									        </div>
									        <input type="file" name="image" class="form-control" required="true" />
									    </div>
									    <div>
									        <form:errors path="imageUrl" class="alert alert-danger"/>
									    </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Registrar</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>
