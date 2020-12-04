<%-- 
    Document   : cadastrar-veiculo
    Created on : 16 de nov de 2020, 09:31:03
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
        <h2>Cadastro de Veículos</h2>
        <hr/>
        <form action="recebe-cadastrar-veiculos.jsp" method="POST">
            <label>Marca</label>
            <input type="text" name="marca"/>
            <br/> <!-- acertar por CSS -->
            <br/>
            <label>Modelo</label>
            <input type="text" name="modelo"/>
            <br/> <!-- acertar por CSS -->
            <br/>
            <label>Placa</label>
            <input type="text" name="placa"/>
            <br/> <!-- acertar por CSS -->
            <br/>
            <label>Km: </label>
            <input type="text" name="km"/>
            <br/> <!-- acertar por CSS -->
            <br/>
            <input type="checkbox" name="arcond"/>
            <label>Ar Condicionado</label>
            <br/> <!-- acertar por CSS -->
            <br/>
            <input type="checkbox" name="dirhidraulica"/>
            <label>Direção Hidráulica</label>
            <br/> <!-- acertar por CSS -->
            <br/>
            <input type="checkbox" name="cambioautom"/>
            <label>Câmbio Automático</label>

            <hr/>
            <input type="submit" value="Salvar Cadastro de Veículo"/>
            <hr/>
            <input type="button" value="Retornar para Página Principal" onclick="location.href='index.html'"/>

        </form>
    </body>
</html>
