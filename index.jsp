<%-- 
    Document   : index
    Created on : 12/06/2024, 6:22:53?a. m.
    Author     : BRAYAN
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body, html {
            background-image :url("https://img.freepik.com/fotos-premium/dinero-como-elemento-vital-red-interconectada-que-es-economia-global-fondo-pantalla-movil-vertical_896558-14026.jpg") ;
            
           
       
        }
        .container {
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        .main-content {
            flex: 1;
             background-image :url("https://mir-s3-cdn-cf.behance.net/project_modules/fs/7bb2de88980121.5de7c9999e19d.gif") ;
            
            display: flex;
        }
        .sidebar {
            width: 200px;
         
            
            padding: 20px;
        }
        .content {
            flex: 1;
            padding: 15px;
            
        }
        .footer {
            width: 50%;
            height: 200px;
            background-color: blueviolet;
            margin-left: auto ;
            margin-right: auto;
              
            
            text-align: center;
            
            
            
       
        
          
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
         <a href="simulador.jsp" class="link link-"> Ir al simulador Libre Inversion</a>
         </br>
         </br>
         <a href="simuladorCDT.jsp" class="link link-"> Ir al simulador de Cdt</a>
         </br>
         </br>
         <a href="hipoteca.jsp" class="link link-"> Ir al simulador de Hipoteca</a>
         </br>
     <br>
       <a href="experiencia.jsp" class="link link-dark "> Experiencia  usuario</a>
                                
                                      
                                       
           
        </div>
                     
   
    </div>
    
     <div class="footer">
         <p><h4>Bancolombia<br> Carrera 48 # 26-85 <br>Teléfonos:01-800-0912345<br> Instagram:@bancolombia<br>facebook:Bancolombia</h4></p>
        </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>