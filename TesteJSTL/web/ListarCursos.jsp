<%-- 
    Document   : ListarCursos
    Created on : 18/04/2018, 07:55:12
    Author     : lavinia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1><fmt:message bundle="${b}" key="titulo"/></h1>
            <h3><a href="?locale=pt_BR"> Português</a></h3>
            <h3><a href="?locale=en_US"> Inglês</a></h3>
        </header>
        <article>
        <form action="Filtrar" method="POST">
            <label><fmt:message bundle="${b}" key="descricao"/></label>
            <input type="text" name="filtro_descricao">
            
            <label><fmt:message bundle="${b}" key="diretoria"/></label>
            <select name="filtro_diretoria">
                <option value="">-</option>
                <option value="diac">DIAC</option>
                <option value="diatinf">DIATINF</option>
                <option value="diaren">DIAREN</option>
                <option value="diacon">DIACON</option>
                <option value="diacin">DIACIN</option>
            </select>

            <label><fmt:message bundle="${b}" key="modalidade"/></label>
            <select name="filtro_modalidade">
                <option value="">-</option>
                <option value="licenciatura">Licenciatura</option>
                <option value="Tecnologia">Tecnologia</option>
                <option value="tecnico_integrado">Técnico Integrado</option>
                <option value="tecnico_subsequente">Técnico Subsequente</option>
                <option value="mestrado">Mestrado</option>
            </select> 

            <input type="submit" value="<fmt:message bundle="${b}" key="filtrar"/>"/> 
            </form> 
            
            <table>
                <thead>
                    <tr>
                        <th> <fmt:message bundle="${b}" key="codigo"/> </th>
                        <th> <fmt:message bundle="${b}" key="descricao"/></th>
                        <th> <fmt:message bundle="${b}" key="diretoria"/></th>
                        <th> <fmt:message bundle="${b}" key="modalidade"/></th>
                        <th> <fmt:message bundle="${b}" key="ano"/></th>
                        <th> <fmt:message bundle="${b}" key="situacao"/></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="c" items="${applicationScope.cursos}">
                        <tr>
                            <td><c:out value="${c.codigo}"/></td>
                            <td><c:out value="${c.descricao}"/></td>
                            <td><c:out value="${c.diretoria}"/></td>
                            <td><c:out value="${c.modalidade}"/></td>
                            <td><c:out value="${c.situacao}"/></td>
                            <td><c:out value="${c.ano_letivo}"/></td>
                        </tr>
                    </c:forEach> 
                </tbody>
            </table>                          
        </article>
    </body>
</html>
