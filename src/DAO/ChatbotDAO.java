package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Connection.ConnectionFactory;

import Model.Chatbot;

public class ChatbotDAO {

		public int criar(Chatbot chatbot) throws IOException {
			String sqlInsert = "INSERT INTO chatbot(usuario, senha, resposta, pergunta) VALUES (?, ?, ?, ?)";
			// pega a conexão em um try normal para que ela não seja fechada
			try {
				Connection conn = ConnectionFactory.obterConexao();
				// usando o try with resources do Java 7, que fecha o que abriu
				try (PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
					stm.setString(1, chatbot.getUsuario());
					stm.setString(2, chatbot.getSenha());
					stm.setString(3, chatbot.getResposta());
					stm.setString(4, chatbot.getPergunta());
					stm.execute();
					String sqlQuery = "SELECT LAST_INSERT_ID()";
					try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
							ResultSet rs = stm2.executeQuery();) {
						if (rs.next()) {
							chatbot.setId(rs.getInt(1));
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new IOException();
					}
				} catch (SQLException e1) {
					e1.printStackTrace();
					throw new IOException();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
				throw new IOException();
			}
			return chatbot.getId();
		}
		public Chatbot carregar(int id) throws IOException {
			Chatbot chatbot = new Chatbot();
			chatbot.setId(id);
			String sqlSelect = "SELECT usuario, senha, resposta, pergunta FROM chatbot WHERE chatbot.id = ?";
			// pega a conexão em um try normal para que ela não seja fechada
			try {
				Connection conn = ConnectionFactory.obterConexao();
				// usando o try with resources do Java 7, que fecha o que abriu
				try (PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
					stm.setInt(1, chatbot.getId());
					try (ResultSet rs = stm.executeQuery();) {
						if (rs.next()) {
							chatbot.setUsuario(rs.getString("usuario"));
							chatbot.setSenha(rs.getString("senha"));
							chatbot.setResposta(rs.getString("resposta"));
							chatbot.setPergunta(rs.getString("pergunta"));
						} else {
							chatbot.setId(-1);
							chatbot.setUsuario(null);
							chatbot.setSenha(null);
							chatbot.setResposta(null);
							chatbot.setPergunta(null);
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new IOException();
					}
				} catch (SQLException e1) {
					e1.printStackTrace();
					throw new IOException();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
				throw new IOException();
			}
			return chatbot;
		}	
	}