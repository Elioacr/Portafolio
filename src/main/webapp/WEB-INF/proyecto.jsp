<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador de organizaciones</title>
<link rel="shortcut icon" href="/images/minilogo.png" type="image/x-icon">
<link rel="stylesheet" href="/CSS/proyecto.css">
</head>
<body>
<h2>Organizaciones Registradas</h2>
    <table>
        <thead>
            <tr>
                <th>Titulo</th>
                <th>Descripcion</th>
                <th>URL</th>
                <th>Imagen</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="proyecto" items="${proyectos}">
                <tr>
                    <td>${proyecto.title}</td>
                    <td>${proyecto.description}</td>
                    <td><a href="${proyecto.url}" target="_blank">${proyecto.url}</a></td>
                    <td><img src="${proyecto.imageUrl}" alt="Imagen del proyecto" style="width: 50px;"></td>
                    <td>
                        <c:if test="${!organizacion.verificado}">
                            <form action="/admin/organizaciones/${organizacion.id}/verificar" method="post">
                                <button type="submit">Verificar</button>
                            </form>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/nuevo" class="cta">Nuevo Proyecto</a>  
</body>
</html>