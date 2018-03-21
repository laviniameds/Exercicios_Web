<%-- 
    Document   : erro
    Created on : 18/03/2018, 14:38:49
    Author     : lavinia
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Erro!</h1>
        <h2><%= exception %></h2>
    </body>
</html>
