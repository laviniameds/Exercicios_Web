<%-- 
    Document   : carrinho
    Created on : 28/03/2018, 08:14:58
    Author     : lavinia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Produto" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrinho de compras</h1>
        <table>
            <tr>
                <td>Código</td>        
                <td>Descrição</td>
                <td>Valor</td>
                <td>Ação</td>
            </tr>
            <% HttpSession sessao = request.getSession(); %>
            
            <% ArrayList<Produto> carrinho = (ArrayList<Produto>) sessao.getAttribute("carrinho"); %>
            <% for(Produto p : carrinho) {%>
                <tr>
                    <td> <%= p.getCodigo() %> </td>
                    <td> <%= p.getDescricao()%> </td>
                    <td> <%= p.getValor()%> </td>
                    <td> <% out.println("<a href='ExcluirCarrinho?codigo=" + p.getCodigo().toString() +
                            "'" +">Excluir</a>");
                        %> </td>                
                </tr>    
                       
            <% }%>        
        </table> 
        
        <h3><a href="index.jsp">Voltar</a></h3>
    </body>
</html>
