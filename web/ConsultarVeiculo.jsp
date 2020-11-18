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
        
    </body>
</html>
