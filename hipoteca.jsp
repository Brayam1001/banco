<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simulador de Crédito Hipotecario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.min.css">
</head>
<body>
    <h2 class="mt-5 text-center">Simulador de Crédito Hipotecario</h2>
    <div class="container mt-5">
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
        <div class="row">
            <div class="col-sm">
                <form action="hipoteca.jsp" method="post">
                    <div>
                        <label><b>Digite el monto del préstamo</b></label>
                        <input type="text" class="form-control" name="monto" placeholder="Cantidad en pesos">
                    </div>
                    <div>
                        <label><b>Seleccione el plazo en años:</b></label>
                        <select name="plazo" class="form-select" id="plazo">
                            <option value="5">5</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="25">25</option>
                            <option value="30">30</option>
                        </select>
                    </div>
                    <div><br>
                        <label><b>Digite la tasa de interés anual</b></label>
                        <input type="text" class="form-control" name="tasa" id="tasa" placeholder="Verifique y digite la cantidad">
                    </div><br>
                    <button type="submit" class="btn btn-primary">Calcular</button>
                    <button type="reset" class="btn btn-secondary">Limpiar</button>
                    <a href="index.jsp"class="btn btn-secondary">inicio</a>
                </form>
                <%
                    try {
                        String montoStr = request.getParameter("monto");
                        String plazoStr = request.getParameter("plazo");
                        String tasaStr = request.getParameter("tasa");

                        if (montoStr != null && plazoStr != null && tasaStr != null) {
                            int monto = Integer.parseInt(montoStr);
                            int plazo = Integer.parseInt(plazoStr) * 12; // convertir años a meses
                            double tasa = Double.parseDouble(tasaStr);
                            NumberFormat nf = NumberFormat.getCurrencyInstance(new Locale("es", "CO"));

                            if (monto > 0 && tasa > 0) {
                                double interesMensual = tasa / 12 / 100;
                                double cuotaMensual = monto * interesMensual / (1 - Math.pow(1 + interesMensual, -plazo));
                                double saldo = monto;
                %>
                <table id="simuladorHipotecarioTabla" class="table table-striped mt-4">
                    <thead>
                        <tr>
                            <th scope="col">No. Cuota</th>
                            <th scope="col">Cuota Mensual</th>
                            <th scope="col">Abono a Capital</th>
                            <th scope="col">Abono a Intereses</th>
                            <th scope="col">Saldo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                                for (int i = 1; i <= plazo; i++) {
                                    double intereses = saldo * interesMensual;
                                    double abonoCapital = cuotaMensual - intereses;
                                    saldo -= abonoCapital;
                        %>
                        <tr>
                            <th scope="row"><%= i %></th>
                            <td><%= nf.format(cuotaMensual) %></td>
                            <td><%= nf.format(abonoCapital) %></td>
                            <td><%= nf.format(intereses) %></td>
                            <td><%= nf.format(saldo) %></td>
                        </tr>
                        <%
                                }
                            } else {
                                out.println("Por favor, introduzca un monto y una tasa válidos.");
                            }
                        }
                    } catch (NumberFormatException e) {
                        out.println("Por favor, introduzca valores numéricos válidos.");
                    } catch (NullPointerException e) {
                        out.println("Por favor, complete todos los campos del formulario.");
                    }
                %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-KyZXEAg3QhqLMpG8r+Knujsl5+5hb7ie1SM0Dv5qbiA=" crossorigin="anonymous"></script>

        <!-- DataTables -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.min.js"></script>
    <script>
            $(document).ready(function () {
                $('#simuladorHipotecarioTabla').DataTable({
                    dom: 'Bfrtip',
                    paging: true,
                    buttons: [ 
                        'copy', 'csv', 'excel', 'pdf', 'print'
                    ],
                    language: {
                        paginate: {
                            previous: "Anterior",
                            next: "Siguiente"
                        },
                        search: "Buscar:",
                        lengthMenu: "Mostrar_MENU_registros por página",
                        zeroRecords: "No se encontraron registros coincidentes",
                       
                        infoEmpty: "Mostrando 0 a 0 de 0 registros",
                        infoFiltered: "(filtrado de_MAX_ registros totales)"
                    }
                });
            });

        </script>
</body>
     <div style="text-align: center">
            <p >Bancolombia<br> carrera 48 # 26-85 <br>Teléfonos: 01-800-0912345<br> Instagram: @bancolombia<br> Facebook: Bancolombia</p>
        </div>
</html>