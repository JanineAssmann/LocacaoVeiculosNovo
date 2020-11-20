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
        <form action="receber-dados-veiculos.jsp" method="POST">
            <label>Marca</label>
            <input type="text" name="marca"/>
            
            <br/>
            <label>Modelo</label>
            <input type="text" name="modelo"/>
            
            <br/>
            <label>Placa</label>
            <input type="text" name="placa"/>
            
            <br/>
            <label>Quilometragem</label>
            <input type="text" name="km"/>
            
            <br/>
            <input type="checkbox" name="arcond"/>
            <label>Ar Condicionado</label>
            
            <br/>
            <input type="checkbox" name="dirhidraulica"/>
            <label>Direção Hidráulica</label>
            
            <br/>
            <input type="checkbox" name="cambioautom"/>
            <label>Câmbio Automático</label>
            
            <hr/>
            <input type="submit" value="Salvar Dados"/>
            <br/>
                        
        </form>
    </body>
</html>
