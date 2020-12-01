<%-- 
    Document   : recebe-alterar-dados-veiculo
    Created on : 28 de nov de 2020, 20:47:48
    Author     : Janine
--%>

<%@page import="classes.Carro"%>
<%@page import="utils.Web"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCAÇÃO DE VEÍCULOS INDAIAL</title>
    </head>
    <body>
        <h1>Locação de Veículos</h1>
        <h2>Consulta de Veículos Cadastrados</h2>
        <h3>Alteração de Dados de Veículos</h3>
        <hr/>
        <%
            Integer idcarro = Integer.parseInt(request.getParameter("idcarro"));
            String marca = request.getParameter("marca");
            String modelo = request.getParameter("modelo");
            String placa = request.getParameter("placa");
            Integer km = Integer.parseInt(request.getParameter("km"));
            Boolean arcond = Web.valorCheckbox(request.getParameter("arcond"));
            Boolean dirhidraulica = Web.valorCheckbox(request.getParameter("dirhidraulica"));
            Boolean cambioautom = Web.valorCheckbox(request.getParameter("cambioautom"));
            
            Carro carro = new Carro();
            carro.setId(idcarro);
            carro.setMarca(marca.toUpperCase());
            carro.setModelo(modelo.toUpperCase());
            carro.setPlaca(placa.toUpperCase());
            carro.setKm(km);
            carro.setArcond(arcond);
            carro.setDirhidraulica(dirhidraulica);
            carro.setCambioautom(cambioautom);
            
            try {
                carro.alterar();
                out.write("Dados Alterados com Sucesso<br/><hr/>"  +
                          "<a href='consultar-veiculo.jsp'>Retornar para Página Anterior</a><br/><br/>" + 
                          "<a href='index.html'>Retornar para Página Principal</a>");
            } catch (Exception ex) {
                out.write("Erro: " + ex.getMessage());
            }
        %>
    </body>
</html>
