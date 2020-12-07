<%-- 
    Document   : alterar-dados-cliente
    Created on : 2 de dez de 2020, 10:55:28
    Author     : Janine
--%>

<%@page import="classes.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCADORA DE VEÍCULOS INDAIAL</title>
    </head>
    <body>
        <h1>Locadora de Veículos</h1>
        <h2>Consulta de Veículos Cadastrados</h2>
        <h3>Alteração de Dados de Veículos</h3>
        <hr/>
        <%
            String idcliente = request.getParameter("idcliente");
            Cliente cli = new Cliente();
            if (idcliente != null) {
                cli = cli.consultar(Integer.parseInt(idcliente));
            }
        %>
        <form action="recebe-alterar-dados-cliente.jsp" method="POST">
            <label>Código</label>
            <input type="text" name="idcliente" readonly="true" value="<%out.write(String.valueOf(cli.getId()));%>"/>
            <br/><br/>
            <label>CPF</label>
            <input type="text" name="cpf" value="<%out.write(cli.getCpf());%>"/>
            <br/><br/>
            <label>Nome</label>
            <input type="text" name="nome" value="<%out.write(cli.getNome());%>"/>
            <br/><br/>
            <label>E-Mail</label>
            <input type="text" name="email" value="<%out.write(cli.getEmail());%>"/>
            <br/><br/>
            <label>Telefone</label>
            <input type="text" name="telefone" value="<%out.write(cli.getTelefone());%>"/>
            <br/><br/>
            <label>Número do Cartão</label>
            <input type="text" name="numcartao" value="<%out.write(cli.getNumcartao());%>"/>
            <hr/>
            <input type="submit" value="Confirmar Alteração dos Dados"/>
            <br/><br/>
        </form>
            <button onclick="location.href='consultar-cliente.jsp'">Retornar para Página Anterior</button><br/><br/>
            <button onclick="location.href='index.html'">Retornar para Página Principal</button>
            
    </body>
</html>
