<%-- 
    Document   : ConsultarVeiculo
    Created on : 16 de nov de 2020, 08:56:11
    Author     : Janine
--%>

<%@page import="java.util.List"%>
<%@page import="classes.Carro"%>
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
        <hr/>
        <%
            List <Carro> carros = Carro.consultar();
        %>
        <table> <!-- Indicação do início da tabela -->
            <thead> <!-- Indicação de início do cabeçalho da tabela -->
                <th>Id</th> <!-- Item do cabeçalho da tabela -->
                <th>Marca</th> <!-- Item do cabeçalho da tabela -->
                <th>Modelo</th> <!-- Item do cabeçalho da tabela -->
                <th>Placa</th> <!-- Item do cabeçalho da tabela -->
                <th>Km</th> <!-- Item do cabeçalho da tabela -->
                <th>Ar Condicionado</th> <!-- Item do cabeçalho da tabela -->
                <th>Direção Hidráulica</th> <!-- Item do cabeçalho da tabela -->
                <th>Câmbio Automático</th> <!-- Item do cabeçalho da tabela -->
                
                <!--criar os botões para as opções de excluir e editar-->
                
            </thead> <!-- Indicação de final do cabeçalho da tabela -->
            <tbody> <!-- Indicação de início do corpo da tabela -->
                <% for (Carro c: carros) { %>
                <tr>
                    <td><% out.write(String.valueOf(c.getId())); %></td>
                    <td><% out.write(c.getMarca()); %></td>
                    <td><% out.write(c.getModelo()); %></td>
                    <td><% out.write(c.getPlaca()); %></td>
                    <td><% out.write(String.valueOf(c.getKm())); %></td>
                    <%
                    out.write("<td>" + (c.isArcond() ? "Sim" : "Não") + "</td>");
                    out.write("<td>" + (c.isDirhidraulica() ? "Sim" : "Não") + "</td>");
                    out.write("<td>" + (c.isCambioautom() ? "Sim" : "Não") + "</td>");
                    %>
                </tr>
                    <% } %>
            </tbody> <!-- Indicação de final do corpo da tabela -->
        </table> <!-- Indicação do final da tabela -->
    </body>
</html>
