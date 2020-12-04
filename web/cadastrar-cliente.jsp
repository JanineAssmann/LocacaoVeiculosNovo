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
        
        <form action="recebe-cadastrar-cliente.jsp" method="POST">
            <label>CPF</label>
            <input type="text" name="cpf"/>
            <br/><br/>
            <label>Nome Completo</label>
            <input type="text" name="nome"/>
            <br/><br/>
            <label>Número do Cartão</label>
            <input type="text" name="numcartao"/>
            <br/><br/>
            <label>E-Mail</label>
            <input type="text" name="email"/>
            <br/><br/>
            <label>Telefone</label>
            <input type="text" name="telefone"/>
            
            <hr/>
            <input type="submit" value="Salvar Cadastro de Cliente"/>
            <br/>
            <hr/>
            <input type="button" value="Retornar para Página Principal" onclick="location.href='index.html'"/>
            <br/>
        </form>
    </body>
</html>
