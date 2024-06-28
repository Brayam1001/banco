<%-- 
    Document   : Loginn
    Created on : 12/06/2024, 6:36:56 a. m.
    Author     : BRAYAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
        body, html {
            background-image :url("https://miro.medium.com/v2/resize:fit:1360/1*B1i3cP_eEbIs-4szXlhHjA.gif") ;
            background-size: cover;
           
        }
        </style>

    </head>
    <body >
        <div class="container">
            <div class=" row justify-content-center mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="bg-success card-header text-center">
                            <h3>Login</h3>
                        </div>
                        <div class="card-body">
                            <form action="validacion.jsp" method="post">
                                <div class="mb-3 input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                                </div>
                                <div class="mb-3 input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                                </div>
                                <button type="submit" class="btn btn-success" w-100>Login</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
