package DAO;

import Model.Usuario;
import Connection.ConnectionFactory;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UsuarioDAO {
	public boolean validarLogin(Usuario usuario) {
		String sqlSelect = "SELECT usuario, senha from usuario where usuario = ? and senha = ?";
		
		try {
			Connection conn = ConnectionFactory.obterConexao();
			PreparedStatement stm = conn.prepareStatement(sqlSelect);
			stm.setString(1, usuario.getUsuario());
			stm.setBytes(2, usuario.getSenha());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					return true;
				} else {
					return false;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return false;
	}
	
	public void criarUsuario(Usuario usuario) throws SQLException {
		//criando usuario em bytes
		System.out.println("Entrei no DAO");
		String sqlSelect = "INSERT INTO usuario VALUES(?,?)";
		Connection conn = ConnectionFactory.obterConexao();
		PreparedStatement stm = conn.prepareStatement(sqlSelect);
		stm.setString(1, usuario.getUsuario());
		stm.setBytes(2, usuario.getSenha());
		stm.execute();
	}
}
