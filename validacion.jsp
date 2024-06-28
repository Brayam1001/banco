<%-- 
    Document   : validacion
    Created on : 12/06/2024, 6:37:57 a. m.
    Author     : BRAYAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOL</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    </head>
    <body>
        <%
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        
        if (username !=null && pass !=null) {
                
            
        if (username.equals("admin")&& pass.equals("1234")) {
                response.sendRedirect("index.jsp");
            } else{
            out.println("<div class = ' alert alert-danger text-center'><h3>Usuario o Clave Incorrectos</h3></div>");
            }
            }else{
                         out.println("<div class = 'alert alert-danger text-center'>Por Favor Ingrese Usuario y Contraseña/div>");      
                    }
        %>
    </body>
</html>
