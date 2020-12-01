<%-- 
    Document   : excluir-cadastro-veiculo
    Created on : 28 de nov de 2020, 20:46:45
    Author     : Janine
--%>

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
        <h3>Exclusão de Cadastro de Veículos</h3>
        <hr/>
        <%
            String idcarro = request.getParameter("idcarro");
            Carro c = new Carro();
            if (idcarro != null) {
                c = c.consultar(Integer.parseInt(idcarro));
                if (c == null) {
                    out.write("Cadastro não localizado");
                } else {
                    if (c.excluir()) {
                        out.write("Cadastro Excluído com Sucesso");
                    } else {
                        out.write("Erro ao Excluir Cadastro");
                    }
                }
            }
        %>
        <hr/>
        <input type="button" value="Retornar para Página Anterior" onclick="location.href='consultar-veiculo.jsp'"/><br/><br/>
        <input type="button" value="Retornar para Página Principal" onclick="location.href='index.html'"/>
    </body>
</html>
