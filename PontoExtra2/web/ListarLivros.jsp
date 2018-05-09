<%-- 
    Document   : ListarLivros
    Created on : 04/04/2018, 09:28:22
    Author     : lavinia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listagem de livros</h1>      
            <table>
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Título</th>
                    <th>Preço</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="l" items="${applicationScope.livros}">
                <tr>
                    <td><c:out value="${l.isbn}"/></td>
                    <td><c:out value="${l.titulo}"/></td>
                    <td><c:out value="${l.preco}"/></td>
                </tr>
            </c:forEach>               
            </tbody>
        </table>
    </body>
</html>
