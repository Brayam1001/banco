<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Experiencia</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }
            .container {
                display: flex;
                flex-direction: column;
                height: 100%;
            }
            .main-content {
                flex: 1;
                display: flex;
            }
            .sidebar {
                width: 200px;
                background-color: #f8f9fa;
                padding: 20px;
            }
            .content {
                flex: 1;
                padding: 15px;
            }
            .footer {
                background-color: #f8f9fa;
                text-align: center;
                padding: 400px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="https://www.bancolombia.com/wcm/connect/www.bancolombia.com-26918/0a0e9904-86b7-4040-8c36-6f3359f02797/BannerSuperior.gif?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_K9HC1202P864E0Q30449MS3000-0a0e9904-86b7-4040-8c36-6f3359f02797-oHi7lSl">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://mir-s3-cdn-cf.behance.net/project_modules/1400/8567e388980121.5de7d73acdfc5.gif">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://images.squarespace-cdn.com/content/v1/58ee01d6440243bbc89fa97c/1599694541953-8JI8KM0ZB9WM98FVI01I/PPT-DIRCOM+FINAL+12.03.2018.gif">
                </div>
            </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="main-content">
                <div class="sidebar">
                     <br>
                     <a href="index.jsp" class="link link-dark"> regresar al inicio</a>
                    <br>
                    </br>
                    <a href="simulador.jsp" class="link link-danger "> Ir al simulador</a>
                    </br>
                    <br>
                    <a href="experiencia.jsp" class="link link-dark"> Experiencia usuario</a>
                   
                    
                </div>
                <div class="content">



                    <div class="container mt-5">
                        <div class="text-center">
                            <h1 class="mb-4">Experencia Usuario</h1>
                            <p class="lean mb-4">Conozca lo que nuestros usuarios tienen que decir sobre nuestro simulador de Crédito</p>
                        </div>
                        <div class="row">
                            <%
                                List<String[]> experiencias = (List<String[]>) application.getAttribute("experiencias");
                                if (experiencias == null)
                                {
                                    experiencias = new ArrayList<>();
                                }

                                //OBTENER DATOS DEL FORMULARIO
                                String nombre = request.getParameter("nombre");
                                String experiencia = request.getParameter("experiencia");

                                //AGREGAR NUEVA EXPERIENCIA CAPTURADA DEL FORMULARIO
                                if (nombre != null && experiencia != null)
                                {
                                    experiencias.add(new String[]
                                    {
                                        nombre, experiencia
                                    });
                                    application.setAttribute("experiencias", experiencias);

                                }
                                //   MOSTRAR TODAS LAS EXPERIENCIAS
                                for (String[] exp : experiencias)
                                {


                            %>
                            <div class="col-md-4">
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <p class="card-text"><%=exp[1]%>-<strong><%=exp[0]%></strong> </p>
                                    </div>

                                </div>

                            </div>
                            <%}%>
                        </div>
                        <div class="text-center">
                            <a href="formularioex.jsp" class="btn btn-danger">AgregarExperencia</a>
                        
                         

                        </div>

                    </div>

                </div>
            </div>


        </div>

        <div class="footer">
            <p>Bancolombia<br> carrera 48 # 26-85 <br>Teléfonos:01-800-0912345<br> Instagram:@bancolombia<br>facebook:Bancolombia</p>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>