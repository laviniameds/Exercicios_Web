<%-- 
    Document   : index
    Created on : 04/04/2018, 09:09:41
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
        <form action="exibir.jsp" method="POST">
            
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
