<%-- 
    Document   : consultar-cliente
    Created on : 20 de nov de 2020, 11:00:07
    Author     : Janine
--%>

<%@page import="java.util.List"%>
<%@page import="classes.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCAÇÃO DE VEÍCULOS INDAIAL</title>
        <link rel="shortcut icon" href="car3.ico" type="image/x-icon"> <!-- Inserção do ícone na barra de título do navegador -->
    </head>
    <body>
        <h1>Locação de Clientes</h1>
        <h2>Consulta de Clientes Cadastrados</h2>
        <hr/>
        <%
            List <Cliente> clientes = Cliente.consultar();
        %>
        <table> <!-- Indicação do início da tabela -->
            <thead> <!-- Indicação de início do cabeçalho da tabela -->
                <th>CPF</th> <!-- Item do cabeçalho da tabela -->
                <th>Nome Completo</th> <!-- Item do cabeçalho da tabela -->
                <th>Nº do Cartão</th> <!-- Item do cabeçalho da tabela -->
                <th>Nome do Banco</th> <!-- Item do cabeçalho da tabela -->
                <th>Ag. Bancária</th> <!-- Item do cabeçalho da tabela -->
                <th>Nº da Conta</th> <!-- Item do cabeçalho da tabela -->
                <th>E-Mail</th> <!-- Item do cabeçalho da tabela -->
                <th>Telefone</th> <!-- Item do cabeçalho da tabela -->

                <!--criar os botões para as opções de excluir e editar-->

            </thead> <!-- Indicação de final do cabeçalho da tabela -->
            <tbody> <!-- Indicação de início do corpo da tabela -->
                <% for (Cliente cli : clientes) { %>
                <tr> <!-- Indicação do início dos itens que formarão as linhas da tabela -->
                    <td><%out.write(String.valueOf(cli.getId()));%></td>
                    <td><%out.write(cli.getCpf());%></td>
                    <td><%out.write(cli.getNome());%></td>
                    <td><%out.write(cli.getNumcartao());%></td>
                    <td><%out.write(cli.getNomebanco());%></td>
                    <td><%out.write(cli.getAgbanco());%></td>
                    <td><%out.write(cli.getCtabanco());%></td>
                    <td><%out.write(cli.getEmail());%></td>
                    <td><%out.write(cli.getTelefone());%></td>
                </tr> <!-- Indicação do início dos itens que formarão as linhas da tabela -->
                <% } %>
            </tbody> <!-- Indicação de final do corpo da tabela -->
        </table> <!-- Indicação do final da tabela -->
    </body>
</html>
