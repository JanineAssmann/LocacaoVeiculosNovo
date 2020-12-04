<%-- 
    Document   : excluir-cadastro-cliente
    Created on : 2 de dez de 2020, 15:35:35
    Author     : Janine
--%>

<%@page import="classes.Cliente"%>
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
        <h3>Exclusão de Cadastro de Veículos</h3>
        <hr/>
        <%
            String idcliente = request.getParameter("idcliente");
            Cliente cli = new Cliente();
            if (idcliente != null) {
                cli = cli.consultar(Integer.parseInt(idcliente));
                if (cli == null) {
                    out.write("Cadastro não Localizado");
                } else {
                    if (cli.excluir()) {
                        out.write("Cadastro Excluído com Sucesso");
                    } else {
                        out.write("Erro ao Excluir Cadastro");
                    }
                }
            }
        %>
        <hr/>
        <input type="button" value="Retornar para Página Anterior" onclick="location.href='consultar-cliente.jsp'"/><br/><br/>
        <input type="button" value="Retornar para Página Principal" onclick="location.href='index.html'"/>
    </body>
</html>
