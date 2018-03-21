<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="controle.jsp">
            <label>Usuário:</label>
            <input type="text" name="usuario"/>
            <br>
            <label>Senha:</label>
            <input type="password" name="senha"/>
            <br><br>
            <input type="submit" value="Login"/>
        </form>
        
        <table>
            <thead>
                <tr>
                    <th>Usuário</th>
                    <th>Senha</th> 
                </tr>
            </thead>
            <tbody>
                <% for(Usuario u: (ArrayList<Usuario>)application.getAttribute("lista")){ %>
                <tr>
                    <td> <%= u.getUsuario() %></td>
                    <td> <%= u.getSenha() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
