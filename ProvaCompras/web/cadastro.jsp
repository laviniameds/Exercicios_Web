<%-- 
    Document   : cadastro
    Created on : 28/03/2018, 08:04:14
    Author     : lavinia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro</h1>       
        <form action="Cadastro" method="POST">
            <label>Código</label>
            <input type="text" name="codigo"/>
            <br>
            
            <label>Descrição</label>
            <input type="text" name="descricao"/>
            <br>
            
            <label>Valor</label>
            <input type="text" name="valor"/>
            <br><br>
            
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
