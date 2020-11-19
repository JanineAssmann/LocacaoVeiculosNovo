<%-- 
    Document   : CadastrarVeiculo
    Created on : 16 de nov de 2020, 09:31:03
    Author     : Janine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCAÇÃO DE VEÍCULOS INDAIAL</title>
    </head>
    <body>
        <h1>Locação de Veículos</h1>
        <h2>Cadastro de Veículos</h2>
        <hr/>
        <form action="ReceberDadosVeiculos.jsp" method="POST">
            <label>Informe a Marca</label>
            <input type="text" name="marca"/>
            
            <br/>
            <label>Informe o Modelo</label>
            <input type="text" name="modelo"/>
            
            <br/>
            <label>Informe a Placa</label>
            <input type="text" name="placa"/>
            
            <br/>
            <label>Informe a Quilometragem</label>
            <input type="text" name="km"/>
            
            <br/>
            <input type="checkbox" name="arcond"/>
            <label>Ar Condicionado</label>
            
            <br/>
            <input type="checkbox" name="dirhidraulica"/>
            <label>Direção Hidráulica</label>
            
            <br/>
            <input type="checkbox" name="caombioautom"/>
            <label>Câmbio Automático</label>
            
            <hr/>
            <input type="submit" name="Salvar Dados"/>
            <br/>
                        
        </form>
    </body>
</html>
