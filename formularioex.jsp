<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Experiencia</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
            padding: 200px;
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
        </head>
    <body style="background: burlywood">
        <div class="container mt-5">
            <div class="text-center">
                <h1 class="mb-4">Ingrese su Experiencia</h1>
                <form action="experiencia.jsp" method="post">
                    <div class="mb-3">
                        <label for="nombre" class="form-label"><b>Nombre:</b></label>
                        <input type="text" class="form-control" id="nombre" name="nombre" required="">
                    </div>
                    <div class="mb-3">
                        <label for="experiencia" class="form-label"><b>Experiencia</b></label>
                        <textarea class="form-control" id="experiencia" name="experiencia" rows="3" required=""></textarea>
                    </div>
                    <button type="submit" class=" btn btn-success">Enviar</button>
                    <a href="experiencia.jsp" class="btn btn-primary">Volver a Experencia</a>
                </form>   
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
         </body>
</html>