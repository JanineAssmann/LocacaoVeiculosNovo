<%-- 
    Document   : recebe-alterar-dados-cliente
    Created on : 2 de dez de 2020, 15:03:28
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
        <h3>Alteração de Dados de Veículos</h3>
        <hr/>
        <%
            Integer idcliente = Integer.parseInt(request.getParameter("idcliente"));
            String cpf = request.getParameter("cpf");
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String numcartao = request.getParameter("numcartao");
            
            Cliente cliente = new Cliente();
            cliente.setId(idcliente);
            cliente.setCpf(cpf);
            cliente.setNome(nome.toUpperCase());
            cliente.setTelefone(telefone);
            cliente.setEmail(email.toLowerCase());
            cliente.setNumcartao(numcartao);
            
            try {
                cliente.alterar();
                out.write("Dados Alterados com Sucesso<br/><br/><hr/>" + 
                          "<a href='consultar-cliente.jsp'>Retornar para Página Anterior</a><br/><br/>" + 
                          "<a href='index.html'>Retornar para Página Principal</a>");
            } catch (Exception ex) {
                out.write("Erro: " + ex.getMessage());
            }
        %>
    </body>
</html>
