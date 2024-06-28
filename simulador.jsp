<%-- 
    Document   : simulador
    Created on : 12/06/2024, 6:24:54?a. m.
    Author     : BRAYAN
--%>

<%@page import="java.text.NumberFormat"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simulador</title>
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
              height: 100%;
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
        <div class="main-content">
            <div class="sidebar">
                <a href="index.jsp" class="link link-dark"> regresar al inicio</a>
            <br>
            </br>
            <a href="simulador.jsp" class="link link-danger"> Ir al simulador</a>
            </br>
            <br>
            <a href="experiencia.jsp" class="link link-dark"> Experiencia usuario</a>
                                       
            </div>
              <div class="content">
      
            
             <h2 class="mt-5 text-center">Simulador de Crédito de Libre Inversión</h2>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="simulador.jsp" method="post">
                        <div>
                            <label><b>Digite el Monto del Préstamo:</b></label>
                            <input type="text" class="form-control" name="monto" id="monto" placeholder="Cantidad en pesos">
                        </div></br>
                        <div>
                            <label><b>Seleccione el Plazo:</b></label>
                            <select name="plazo" class="form-select" id="plazo">
                                <option value="12">12</option>
                                <option value="24">24</option>
                                <option value="36">36</option>
                                <option value="48">48</option>
                                <option value="60">60</option>
                                <option value="72">72</option>
                                <option value="84">84</option>
                                <option value="96">96</option>
                                <option value="108">108</option>
                                <option value="120">120</option>
                            </select>
                        </div></br>
                        <div>
                            <label><b>Digite la tasa de Interés Anual:</b></label>
                            <input type="text" class="form-control" name="tasa" id="tasa" placeholder="Verifique y digite la tasa anual">
                        </div></br>
                        <button type="submit" class="btn btn-primary">Calcular</button>
                        <a href="intro.jsp" class="btn btn-success">Volver</a>
                        <button type="reset" class="btn btn-secondary">Limpiar</button></br>
                    </form>
                    <div id="grid"></div>
                    <div class="mt-3">
                        <button id="export-pdf" class="btn btn-danger">Exportar a PDF</button>
                        <button id="export-excel" class="btn btn-success">Exportar a Excel</button>
                        <button id="export-csv" class="btn btn-warning">Exportar a CSV</button>
                        <button id="print" class="btn btn-info">Imprimir</button>
                    </div>
                    <%
                        String jsonData = "[]";
                        try {
                            int monto = Integer.parseInt(request.getParameter("monto"));
                            int plazo = Integer.parseInt(request.getParameter("plazo"));
                            String tas = request.getParameter("tasa");
                            double tasa = Double.parseDouble(tas);
                            NumberFormat nf = NumberFormat.getCurrencyInstance();

                            if (monto >= 1000000 && monto <= 25000000) {
                                double interesMensual = tasa / 12 / 100;
                                double cuotaMensual = monto * interesMensual / (1 - Math.pow(1 + interesMensual, -plazo));
                                double saldo = monto;
                                StringBuilder jsonBuilder = new StringBuilder("[");
                                for (int i = 1; i <= plazo; i++) {
                                    double intereses = saldo * interesMensual;
                                    double abonoCapital = cuotaMensual - intereses;
                                    saldo -= abonoCapital;
                                    jsonBuilder.append("[")
                                                .append(i).append(",")
                                                .append("\"").append(nf.format(cuotaMensual)).append("\",")
                                                .append("\"").append(nf.format(abonoCapital)).append("\",")
                                                .append("\"").append(nf.format(intereses)).append("\",")
                                                .append("\"").append(nf.format(saldo)).append("\"],");
                                }
                                jsonBuilder.setLength(jsonBuilder.length() - 1); // Remove the last comma
                                jsonBuilder.append("]");
                                jsonData = jsonBuilder.toString();
                            } else {
                                out.println("No cumple con las condiciones del Prestamo");
                            }
                        } catch (NumberFormatException e) {
                            out.println("Error en los datos ingresados");
                        }
                    %>
                </div>
            </div>
        </div>

        <!-- Grid.js -->
        <script src="https://cdn.jsdelivr.net/npm/gridjs/dist/gridjs.umd.js"></script>
        <!-- Librerías adicionales para exportación -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.68/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.68/vfs_fonts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.9/xlsx.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>

        <script>
            document.addEventListener("DOMContentLoaded", function() {
                const grid = new gridjs.Grid({
                    columns: ["No Cuota", "Cuota Mensual", "Abono a Capital", "Abono a Intereses", "Saldo"],
                    data: <%= jsonData %>,
                    search: true,
                    pagination: {
                        enabled: true,
                        limit: 10
                    },
                    sort: true,
                    resizable: true,
                    style: {
                        th: {
                            'background-color': '#f8f9fa',
                            'text-align': 'center'
                        }
                    }
                }).render(document.getElementById("grid"));

                // Exportar a PDF
                document.getElementById("export-pdf").addEventListener("click", function() {
                    const docDefinition = {
                        content: [
                            {
                                table: {
                                    headerRows: 1,
                                    widths: [ 'auto', 'auto', 'auto', 'auto', 'auto' ],
                                    body: [
                                        ['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
                                        ...grid.config.data.map(row => row)
                                    ]
                                }
                            }
                        ]
                    };
                    pdfMake.createPdf(docDefinition).download('data.pdf');
                });

                // Exportar a Excel
                document.getElementById("export-excel").addEventListener("click", function() {
                    const ws = XLSX.utils.aoa_to_sheet([
                        ['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
                        ...grid.config.data.map(row => row)
                    ]);
                    const wb = XLSX.utils.book_new();
                    XLSX.utils.book_append_sheet(wb, ws, "Sheet1");
                    XLSX.writeFile(wb, 'data.xlsx');
                });

                // Exportar a CSV
                document.getElementById("export-csv").addEventListener("click", function() {
                    const csv = [
                        ['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
                        ...grid.config.data.map(row => row)
                    ].map(e => e.join(",")).join("\n");
                    const blob = new Blob([csv], { type: 'text/csv' });
                    saveAs(blob, 'data.csv');
                });

                // Imprimir
                document.getElementById("print").addEventListener("click", function() {
                    window.print();
                });
            });
        </script>
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
