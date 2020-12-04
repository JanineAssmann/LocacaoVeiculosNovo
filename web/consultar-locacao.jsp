<%-- 
    Document   : consultar-locacao
    Created on : 2 de dez de 2020, 22:03:08
    Author     : Janine
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="classes.Locacao"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCAÇÃO DE VEÍCULOS INDAIAL</title>
        <link rel="shortcut icon" href="car3.ico" type="image/x-icon"> <!-- Inserção do ícone na barra de título do navegador -->

    </head>
    <body>
        <h1>Locação de Veículos</h1>
        <h2>Locação de Veículos</h2>
        <h3>Consulta de Locações Cadastrados</h3>
        <hr/>
        <%
            List <Locacao> locacoes = new ArrayList<>();
            String cpfcliente = request.getParameter("cpfcliente");
            Locacao locacao = new Locacao();
            if (cpfcliente != null) {
                locacoes = locacao.consultar(cpfcliente);
            } else {
                locacoes = locacao.consultar();
            }
        %>
        <hr/>
        <form action="consulta-locacao.jsp" method="POST">
            <label>Informe o CPF do Cliente</label>
            <input type="text" name="cpfcliente"/>
            <input type="submit" value="Consultar"/>
            <hr/>
            <table>
                <thead>
                    <th>Código</th>
                    <th>Carro</th>
                    <th>Cliente</th>
                    <th>Data</th>
                    <th>Data Prevista para Retirada</th>
                    <th>Data de Retirada</th>
                    <th>Prazo de Locação</th>
                    <th>Data Prevista para Devolução</th>
                    <th>Data de Devolução</th>
                    <th>Km na Retirada do Veículo</th>
                    <th>Km na Devolução do Veículo</th>
                </thead>
                <tbody>
                    <%for (Locacao loc: locacoes) {%>
                    <tr>
                        <td><%out.write(String.valueOf(loc.getId()));%></td>
                        <td><%out.write(loc.getCarro().getPlaca());%></td>
                        <td><%out.write(loc.getCliente().getCpf());%></td>
                        <td><%out.write(String.valueOf(loc.getData()));%></td>
                        <td><%out.write(String.valueOf(loc.getDataprevretirada()));%></td>
                        <td><%out.write(String.valueOf(loc.getDataretirada()));%></td>
                        <td><%out.write(loc.getPrazolocacao());%></td>
                        <td><%out.write(String.valueOf(loc.getDataprevdevolucao()));%></td>
                        <td><%out.write(String.valueOf(loc.getDatadevolucao()));%></td>
                        <td><%out.write(loc.getKminicial());%></td>
                        <td><%out.write(loc.getKmfinal());%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
    </body>
</html>
