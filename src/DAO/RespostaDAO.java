package DAO;

import Model.Resposta;
import Connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RespostaDAO {

	public ArrayList<Resposta> buscaRespostaPorPalavrasChaves(List<Integer> palavrasChavesIds) {
		Resposta resp;
		ArrayList<Resposta> respostas = new ArrayList<>();
		String sql = "SELECT r.ID_Respostas, r.respostas FROM respostas r JOIN respostapalavrachave rp on (r.ID_Respostas = rp.ID_Respostas) where rp.ID_PalavraChave in (?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obterConexao();
				PreparedStatement stm = conn.prepareStatement(sql);) {
			for(int i = 0; i< palavrasChavesIds.size();i++) {
			stm.setInt(1, palavrasChavesIds.get(i));
			}
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					resp = new Resposta();
					resp.setId(rs.getInt("id_respostas"));
					resp.setValor(rs.getString("respostas"));
					respostas.add(resp);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return respostas;
	}
}
