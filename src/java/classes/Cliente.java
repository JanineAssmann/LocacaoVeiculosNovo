
package classes;

import java.util.List;
import utils.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Cliente {

    private int id;
    private String cpf;
    private String nome;
    private String numcartao;
    private int numcheque;
    private String nomebanco;
    private int agbanco;
    private String ctabanco;
    private String email;
    private String telefone;

    @Override
    public String toString() {
        return "Cadastro de Clientes: "
                + "\nCliente Nº: " + id 
                + "\nNome: " + nome 
                + "\nCPF: " + cpf 
                + "\nNº Cartão: " + numcartao 
                + "\nBanco: " + nomebanco 
                + "\nAgência: " + agbanco 
                + "\nNº Conta: " + ctabanco 
                + "\nNº Cheque: " + numcheque 
                + "\nE-Mail: " + email 
                + "\nTelefone: " + telefone
                + "\n";
    }

    public boolean salvar() {
        String sql = "insert into cliente (nome, cpf, numcartao, nomebanco, ";
              sql += "agbanco, ctabanco, numcheque, email, telefone) values ";
              sql += "(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.nome);
            stm.setString(2, this.cpf);
            stm.setString(3, this.numcartao);
            stm.setString(4, this.nomebanco);
            stm.setInt(5, this.agbanco);
            stm.setString(6, this.ctabanco);
            stm.setInt(7, this.numcheque);
            stm.setString(8, this.email);
            stm.setString(9, this.telefone);
            stm.execute();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
            return false;
        }
        return true;
    }
    
    public boolean alterar() {
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        String sql = "update cliente set nome = ?, cpf = ?, numcartao = ?, ";
              sql += "nomebanco = ?, agbanco = ?, ctabanco = ?, numcheque = ?, ";
              sql += "email = ?, telefone = ? where id = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.nome);
            stm.setString(2, this.cpf);
            stm.setString(3, this.numcartao);
            stm.setString(4, this.nomebanco);
            stm.setInt(5, this.agbanco);
            stm.setString(6, this.ctabanco);
            stm.setInt(7, this.numcheque);
            stm.setString(8, this.email);
            stm.setString(9, this.telefone);
            stm.setInt(10, this.id);
            stm.execute();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
            return false;
        }
        return true;
    }
    
    public boolean excluir() {
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        String sql = "delete from cliente where id = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, this.id);
            stm.execute();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
            return false;
        }
        return true;
    }
    
    public static Cliente consultar(int id) {
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        String sql = "select * from cliente where id = ?";
        Cliente cliente = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                cliente = new Cliente();
                cliente.setId(id);
                cliente.setNome(rs.getString("Nome"));
                cliente.setCpf(rs.getString("CPF"));
                cliente.setNumcartao(rs.getString("NumCartao"));
                cliente.setNomebanco(rs.getString("NomeBanco"));
                cliente.setAgbanco(rs.getInt("AgBanco"));
                cliente.setCtabanco(rs.getString("CtaBanco"));
                cliente.setNumcheque(rs.getInt("NumCheque"));
                cliente.setEmail(rs.getString("Email"));
                cliente.setTelefone(rs.getString("Telefone"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return cliente;
    }

    public static Cliente consultar(String cpf) {
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        String sql = "select * from cliente where cpf = ?";
        Cliente cliente = null;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cpf);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                cliente = new Cliente();
                cliente.setId(rs.getInt("Id"));
                cliente.setNome(rs.getString("Nome"));
                cliente.setCpf(rs.getString("CPF"));
                cliente.setNumcartao(rs.getString("NumCartao"));
                cliente.setNomebanco(rs.getString("NomeBanco"));
                cliente.setAgbanco(rs.getInt("AgBanco"));
                cliente.setCtabanco(rs.getString("CtaBanco"));
                cliente.setNumcheque(rs.getInt("NumCheque"));
                cliente.setEmail(rs.getString("Email"));
                cliente.setTelefone(rs.getString("Telefone"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return cliente;
    }
    
    public static List<Cliente> consultar() {
        //Connection con = Conexao.conectar();
        Connection con = Conexao.getInstance();
        String sql = "select * from cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("Nome"));
                cliente.setCpf(rs.getString("CPF"));
                cliente.setNumcartao(rs.getString("NumCartao"));
                cliente.setNomebanco(rs.getString("NomeBanco"));
                cliente.setAgbanco(rs.getInt("AgBanco"));
                cliente.setCtabanco(rs.getString("CtaBanco"));
                cliente.setNumcheque(rs.getInt("NumCheque"));
                cliente.setEmail(rs.getString("Email"));
                cliente.setTelefone(rs.getString("Telefone"));
                listaCliente.add(cliente);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return listaCliente;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNumcartao() {
        return numcartao;
    }

    public void setNumcartao(String numcartao) {
        this.numcartao = numcartao;
    }

    public int getNumcheque() {
        return numcheque;
    }

    public void setNumcheque(int numcheque) {
        this.numcheque = numcheque;
    }

    public String getNomebanco() {
        return nomebanco;
    }

    public void setNomebanco(String nomebanco) {
        this.nomebanco = nomebanco;
    }

    public int getAgbanco() {
        return agbanco;
    }

    public void setAgbanco(int agbanco) {
        this.agbanco = agbanco;
    }

    public String getCtabanco() {
        return ctabanco;
    }

    public void setCtabanco(String ctabanco) {
        this.ctabanco = ctabanco;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
}