package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;

import Connection.ConnectionFactory;

import Model.Conversa;

public class ChatbotDAO {

	public int AtualizarAtendimento(int id_Atendimento) {
		String sqlInsert = "UPDATE atendimento SET Status_Atendimento = ? WHERE ID_Atendimento = ? ";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, "Fechado");
			stm.setInt(2, id_Atendimento);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public String Ultima() {
		Conversa conv = new Conversa();

		String sqlSelect = "SELECT pergunta FROM conversa ORDER BY id_conversa desc limit 1";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					conv.setPergunta(rs.getString("pergunta"));
				} else {
					conv.setPergunta(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return conv.getPergunta();
	}
	public String TirarEspeciais(String aux){
		String nova = new String();
		for(int i = 0; i<aux.length(); i++) {
			if((aux.charAt(i) == ',') || (aux.charAt(i) == '.') || (aux.charAt(i) == ';') || (aux.charAt(i) == ':')
					|| (aux.charAt(i) == '/') || (aux.charAt(i) == '#') || (aux.charAt(i) == '?') || (aux.charAt(i) == '!')) {
			
			}else {
				nova += aux.charAt(i);
			}
		}
		return nova;
	}
	
	public static String removeAccents(String str) {
	    str = Normalizer.normalize(str, Normalizer.Form.NFD);
	    str = str.replaceAll("[^\\p{ASCII}]", "");
	    return str;
	}
	
	public void  QualTentativaCorreta(int qualtentativa){
		if(qualtentativa==1){
			String sqlSelect = "insert into tentativas (primeira_tentativa) values (?)";
			try(Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setInt(1,qualtentativa);
				stm.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(qualtentativa==2){
			String sqlSelect = "INSERT INTO tentativas (segunda_tentativa) values (?)";
			try(Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setInt(1,qualtentativa);
				stm.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(qualtentativa==3){
			String sqlSelect = "INSERT INTO tentativas (terceira_tentativa) values (?)";
			try(Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setInt(1,qualtentativa);
				stm.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void InserirQuantidadeDeAtendimentoHumano(int valor){
		String sqlSelect = "INSERT INTO tentativas (atendimento_humano) values (?)";
		try(Connection conn = ConnectionFactory.obterConexao();
			PreparedStatement stm = conn.prepareStatement(sqlSelect);){
			stm.setInt(1,valor);
			stm.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int pegaQuantidadeResolvidaDePrimeira(){
		int quantidadeDeElementos=0;
		String sqlSelect = "select primeira_tentativa from tentativas";
		try (Connection conn = ConnectionFactory.obterConexao();
			 PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					quantidadeDeElementos = new Integer(quantidadeDeElementos);
					quantidadeDeElementos = rs.getInt("primeira_tentativa")+quantidadeDeElementos;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}

		return quantidadeDeElementos;
	}
	public int pegaQuantidadeResolvidaDeTerceira(){
		int quantidadeDeElementos=0;
		String sqlSelect = "select terceira_tentativa from tentativas";
		try (Connection conn = ConnectionFactory.obterConexao();
			 PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					quantidadeDeElementos = new Integer(quantidadeDeElementos);
					quantidadeDeElementos = rs.getInt("terceira_tentativa")+quantidadeDeElementos;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}

		return quantidadeDeElementos;
	}
	public int pegaQuantidadeResolvidaDeSegunda(){
		int quantidadeDeElementos=0;
		String sqlSelect = "select segunda_tentativa from tentativas";
		try (Connection conn = ConnectionFactory.obterConexao();
			 PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					quantidadeDeElementos = new Integer(quantidadeDeElementos);
					quantidadeDeElementos = rs.getInt("segunda_tentativa")+quantidadeDeElementos;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return quantidadeDeElementos;
	}

	public int PegaQuantidadeDeAtendimentoHumano(){
		int quantidadeDeElementos = 0;
		String sqlSelect = "select atendimento_humano from tentativas";
		try (Connection conn = ConnectionFactory.obterConexao();
			 PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					quantidadeDeElementos = new Integer(quantidadeDeElementos);
					quantidadeDeElementos = rs.getInt("atendimento_humano")+quantidadeDeElementos;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return quantidadeDeElementos;
	}
}