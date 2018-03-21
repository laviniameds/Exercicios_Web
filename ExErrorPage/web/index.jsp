<%@page errorPage="erro.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>
            <%
                System.out.println(1/0); 
            %>
        </h1>        
    </body>
</html>
