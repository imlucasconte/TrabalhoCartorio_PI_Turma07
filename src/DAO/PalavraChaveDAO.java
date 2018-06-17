package DAO;

import Connection.ConnectionFactory;
import Model.PalavraChave;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PalavraChaveDAO {

	public ArrayList<PalavraChave> buscaTodasPalavraChaves() {
		PalavraChave palavra;
		ArrayList<PalavraChave> lista = new ArrayList<>();
		String sqlSelect = "SELECT id_palavraChave, palavraChave FROM palavrachave";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					palavra = new PalavraChave();
					palavra.setId(rs.getInt("id_palavraChave"));
					palavra.setPalavra(rs.getString("PalavraChave"));
					lista.add(palavra);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return  lista;
	}
}
