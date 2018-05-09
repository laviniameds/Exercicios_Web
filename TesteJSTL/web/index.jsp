<%-- 
    Document   : index.jsp
    Created on : 18/04/2018, 07:24:16
    Author     : lavinia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:choose>
    <c:when test="${param.locale eq 'en_US'}">
      <fmt:setLocale value="en_US"/>
    </c:when>
    <c:otherwise>
        <fmt:setLocale value="pt_BR"/>
    </c:otherwise>    
</c:choose>
<fmt:setBundle basename="resourcebundle.rotulos" var="b"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1><fmt:message bundle="${b}" key="titulo2"/></h1>
            <h3><a href="?locale=pt_BR"> Português</a></h3>
            <h3><a href="?locale=en_US"> Inglês</a></h3>
        </header>
        <article>
            <form action="Cadastro" method="POST">
               <label><fmt:message bundle="${b}" key="codigo"/></label>
               <input type="text" name="codigo"/>
               <br>

               <label><fmt:message bundle="${b}" key="descricao"/></label>
               <input type="text" name="descricao"/>
               <br>

               <label><fmt:message bundle="${b}" key="diretoria"/>a</label>
                <select name="diretoria">
                  <option value="diac">DIAC</option>
                  <option value="diatinf">DIATINF</option>
                  <option value="diaren">DIAREN</option>
                  <option value="diacon">DIACON</option>
                  <option value="diacin">DIACIN</option>
                </select>              
               <br>
               
                <label><fmt:message bundle="${b}" key="modalidade"/></label>
                <select name="modalidade">
                  <option value="licenciatura">Licenciatura</option>
                  <option value="Tecnologia">Tecnologia</option>
                  <option value="tecnico_integrado">Técnico Integrado</option>
                  <option value="tecnico_subsequente">Técnico Subsequente</option>
                  <option value="mestrado">Mestrado</option>
                </select>
                <br>
                
                <label><fmt:message bundle="${b}" key="ano"/></label>
                <input type="text" name="ano_letivo"/>
                <br>
                
                <label><fmt:message bundle="${b}" key="situacao"/></label>
                <input type="radio" name="situacao" value="ativo" checked> Ativo<br>
                <input type="radio" name="situacao" value="inativo"> Inativo<br>
                <br>
                <br>

               <input type="submit" value="<fmt:message bundle="${b}" key="cadastrar"/>"/>
            </form>
        </article>
        <a href="ListarCursos.jsp">Listar todos os Cursos</a>
    </body>
</html>
