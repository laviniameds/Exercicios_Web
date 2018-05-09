<%@page import="java.util.ArrayList"%>
<%@page import="models.Produto"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Lojas Mil!</h1>
        <h2>Produtos</h2>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Descrição</th>
                    <th>Valor</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody>
                <% HttpSession sessao = request.getSession();
                   ArrayList<Produto> carrinho = (ArrayList<Produto>)sessao.getAttribute("carrinho");
                   ArrayList<Produto> produtos = (ArrayList<Produto>)application.getAttribute("produtos");
                   
                   if(produtos == null)
                       produtos = new ArrayList<Produto>();
                   
                   if(carrinho == null)
                       carrinho = new ArrayList<Produto>();
                
                for(Produto p: produtos){ %>
                <tr>
                    <td> <%= p.getCodigo() %></td>
                    <td> <%= p.getDescricao() %></td>
                    <td> <%= p.getValor()%></td>
                    <td> <% out.println("<a href='AddCarrinho?codigo=" + p.getCodigo().toString() +
                            "'" + ">Selecionar</a>");                      
                        %> 
                    </td>
                </tr>
                <% } 
                
                sessao.setAttribute("carrinho", carrinho);
                application.setAttribute("produtos", produtos);
                
                %>
            </tbody>
        </table>
        <h3> <a href="cadastro.jsp">Cadastrar novo produto</a> </h3>
        <h3> <a href="VerCarrinho">Ver Carrinho</a> </h3>
    </body>
</html>
