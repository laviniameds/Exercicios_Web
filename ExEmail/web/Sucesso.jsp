<%-- 
    Document   : Sucesso
    Created on : 21/03/2018, 09:46:48
    Author     : lavinia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso</title>
    </head>
    <body>
        <h1>E-mail enviado com sucesso!</h1>
        <h3>Destinatário: <%= request.getParameter("para") %> </h3>
        <h3>Assunto: <%= request.getParameter("assunto") %> </h3>
        <h3>Mensagem: <%= request.getParameter("mensagem") %> </h3>
    </body>
</html>
