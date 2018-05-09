<%-- 
    Document   : index
    Created on : 04/04/2018, 09:25:35
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
        <h1>Cadastro de Livros</h1>
        <form action="Cadastro" method="POST">
            <label>ISBN</label>
            <input type="text" name="isbn"/>
            <br>
            
            <label>Título</label>
            <input type="text" name="titulo"/>
            <br>
            
            <label>Preço</label>
            <input type="text" name="preco"/>
            <br><br>
            
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
