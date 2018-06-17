package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Connection.ConnectionFactory;
import Model.Dash;

public class Atend_ConversaDAO {
/*
 * 	 Metodo para selecionar o ultimo atendimento e o ultimo id da comversa para add na tabela de associaçao
 */
	public int Atendimento_conversa(Dash conv) {

		String sqlInsert = "INSERT INTO Atendimento_conversa ( idatendimento_ac, idconversa_ac) VALUES (?,?)";
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setInt(1, conv.getId_atendimento());
			stm.setInt(2, conv.getId_conversa());
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int SelctAten() {

		Dash conv = new Dash();
		Atend_ConversaDAO dao = new Atend_ConversaDAO();
		String sqlSelect = "SELECT ID_Atendimento FROM atendimento ORDER BY ID_Atendimento  DESC LIMIT 1";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					conv.setId_atendimento(rs.getInt("ID_Atendimento"));
				} else {
					conv.setId_atendimento(0);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		String sqlSelect2 = "SELECT ID_conversa FROM conversa ORDER BY ID_conversa  DESC LIMIT 1";
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect2);) {
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					conv.setId_conversa(rs.getInt("ID_conversa"));
				} else {
					conv.setId_conversa(0);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}

		return dao.Atendimento_conversa(conv);

	}
}
