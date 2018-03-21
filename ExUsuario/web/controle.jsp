<%-- 
    Document   : controle
    Created on : 19/03/2018, 07:34:59
    Author     : lavinia
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
          ArrayList<Usuario> lista = (ArrayList<Usuario>)application.getAttribute("lista");
          if(lista == null){
                lista = new ArrayList<>();
                application.setAttribute("lista", lista);
          }
          
          Usuario user = new Usuario(request.getParameter("usuario"), request.getParameter("senha"));
          
          for(Usuario u: lista) {
              if(u.getUsuario() != null){
                  
              }
           }
          
          
        %>
    </body>
</html>
