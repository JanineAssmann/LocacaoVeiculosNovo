<%-- 
    Document   : cadastrar-cliente
    Created on : 20 de nov de 2020, 10:37:05
    Author     : Janine
--%>

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
        <h2>Cadastro de Clientes</h2>
        <hr/>
        <form action="receber-dados-clientes.jsp" method="POST">
            <label>CPF</label>
            <input type="text" name="cpf"/>
            
            <label>Nome Completo</label>
            <input type="text" name="nome"/>
            
            <label>Número do Cartão</label>
            <input type="text" name="numcartao"/>
            
            <label>Nome do Banco</label>
            <input type="text" name="nomebanco"/>
            
            <label>Agência Bancária</label>
            <input type="text" name="agbanco"/>
            
            <label>Número da Conta</label>
            <input type="text" name="ctabanco"/>
            
            <label>E-Mail</label>
            <input type="text" name="email"/>
            
            <label>Telefone</label>
            <input type="text" name="telefone"/>
            
            <hr/>
            <input type="submit" value="Salvar Dados"/>
            <br/>
        </form>
    </body>
</html>
