<%-- 
    Document   : receber-dados-clientes
    Created on : 20 de nov de 2020, 10:48:41
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
        <h1>Locação de Veículos Indaial</h1>
        <%
            String cpf = request.getParameter("cpf");
            String nome = request.getParameter("nome");
            String numcartao = request.getParameter("numcartao");
            String nomebanco = request.getParameter("nomebanco");
            
        %>
    </body>
</html>
