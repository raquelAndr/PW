<!DOCTYPE html>
<%@page import="servletjsp.CalculaImc"%>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Calcula IMC</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Estilos da aplicação. -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <h1>Calcula IMC</h1>
        <form>
            Informe seu peso: <input name="peso">
            <br><br>
            Informe sua altura: <input name="altura">
            <br><br>
            <button style="margin-bottom: 20px;">Calcular</button>

            <%!
                public String valor(HttpServletRequest req, String param, String padrao) {

                    String result = req.getParameter(param);
                    if (result == null) {
                        result = padrao;
                    }
                    return result;
                }

                public int toInt(HttpServletRequest req, String param, String padrao) {
                    return Integer.parseInt(valor(req, param, padrao));
                }

                public double toDouble(HttpServletRequest req, String param, String padrao) {
                    return Double.parseDouble(valor(req, param, padrao));
                }
            %>

            <%
                int peso = toInt(request, "peso", "0");
                double altura = toDouble(request, "altura", "0");

                String resultado = CalculaImc.calcular(peso, altura);
            %>
        </form>
        <b style="color: #31b0d5">Resultado: <%out.print(resultado);%></b>
    </body>

</html>