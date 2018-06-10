package DAO;

import Model.Usuario;
import Connection.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
	
	public int criarUsuario (Usuario usuario) throws IOException {
		String sqlInsert = "INSERT INTO usuario (usuario, senha) VALUES (?, ?)";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
				stm.setString(1, usuario.getUsuario());
				stm.setString(2, usuario.getSenha());
				stm.execute();

				} catch (SQLException e) {
					e.printStackTrace();
					throw new IOException();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
				throw new IOException();
			}
		return 0;
	}

	public boolean validarLogin(Usuario usuario) {
		String sqlSelect = "SELECT usuario, senha from usuario where usuario = ? and senha = ?";
		
		try {
			Connection conn = ConnectionFactory.obterConexao();
			PreparedStatement stm = conn.prepareStatement(sqlSelect);
			stm.setString(1, usuario.getUsuario());
			stm.setString(2, usuario.getSenha());
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
}