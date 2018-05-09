<%-- 
    Document   : exibir
    Created on : 04/04/2018, 09:12:07
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
        <h1>Dados do cadastro:</h1>
        
        <c:if test="${param.descricao == 'DWEB'}">
            <c:out value="${param.descricao}"/>
            <br>
            <c:out value="${param.valor}"/>
        </c:if>
        
    </body>
</html>
