<%-- 
    Document   : ListarLivros
    Created on : 21/03/2018, 07:37:36
    Author     : lavinia
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Livros</title>
    </head>
    <body>
        <h1>Listagem de livros</h1>
        
                <table>
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Título</th>
                    <th>Autor</th>
                </tr>
            </thead>
            <tbody>
                <% HttpSession sessao = request.getSession();
                    
                    for(Livro l: (ArrayList<Livro>)sessao.getAttribute("livros")){ %>
                <tr>
                    <td> <%= l.getISBN()%></td>
                    <td> <%= l.getTitulo() %></td>
                    <td> <%= l.getAutor()%></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
