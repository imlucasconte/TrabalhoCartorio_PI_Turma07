package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connection.ConnectionFactory;

import Model.Cliente;

public class ClienteDAO {
	public int criar(Cliente cliente) throws IOException {
		String sqlInsert = "INSERT INTO cliente(nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
				stm.setString(1, cliente.getNome());
				stm.setString(2, cliente.getCidade());
				stm.setString(3, cliente.getEstado());
				stm.setString(4, cliente.getBairro());
				stm.setString(5, cliente.getLogradouro());
				stm.setString(6, cliente.getNumero());
				stm.setString(7, cliente.getComplemento());
				stm.setString(8, cliente.getCep());
				stm.setString(9, cliente.getFone());
				stm.setString(10, cliente.getEmail());
				stm.execute();
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();) {
					if (rs.next()) {
						cliente.setId(rs.getInt(1));
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
		return cliente.getId();
	}

	public void atualizar(Cliente cliente) throws IOException {
		String sqlUpdate = "UPDATE cliente SET nome=?, cidade=?, estado=?, bairro=?, logradouro=?, numero=?, complemento=?, cep=?, fone=?, email=? WHERE id=?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
				stm.setString(1, cliente.getNome());
				stm.setString(2, cliente.getCidade());
				stm.setString(3, cliente.getEstado());
				stm.setString(4, cliente.getBairro());
				stm.setString(5, cliente.getLogradouro());
				stm.setString(6, cliente.getNumero());
				stm.setString(7, cliente.getComplemento());
				stm.setString(8, cliente.getCep());
				stm.setString(9, cliente.getFone());
				stm.setString(10, cliente.getEmail());
				stm.setInt(11, cliente.getId());
				stm.execute();
			} catch (Exception e) {
				e.printStackTrace();
				throw new IOException();
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
			throw new IOException();
		}
	}

	public void excluir(int id) throws IOException {
		String sqlDelete = "DELETE FROM cliente WHERE id = ?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
				stm.setInt(1, id);
				stm.execute();
			} catch (Exception e) {
				e.printStackTrace();
				throw new IOException();
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
			throw new IOException();
		}
	}

	public Cliente carregar(int id) throws IOException {
		Cliente cliente = new Cliente();
		cliente.setId(id);
		String sqlSelect = "SELECT nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email FROM cliente WHERE cliente.id = ?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setInt(1, cliente.getId());
				try (ResultSet rs = stm.executeQuery();) {
					if (rs.next()) {
						cliente.setNome(rs.getString("nome"));
						cliente.setCidade(rs.getString("cidade"));
						cliente.setEstado(rs.getString("Estado"));
						cliente.setBairro(rs.getString("bairro"));
						cliente.setLogradouro(rs.getString("logradouro"));
						cliente.setNumero(rs.getString("numero"));
						cliente.setComplemento(rs.getString("complemento"));
						cliente.setCep(rs.getString("cep"));
						cliente.setFone(rs.getString("fone"));
					} else {
						cliente.setId(-1);
						cliente.setNome(null);
						cliente.setCidade(null);
						cliente.setBairro(null);
						cliente.setEstado(null);
						cliente.setBairro(null);
						cliente.setLogradouro(null);
						cliente.setNumero(null);
						cliente.setComplemento(null);
						cliente.setCep(null);
						cliente.setFone(null);
						cliente.setEmail(null);
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
		return cliente;
	}

	public ArrayList<Cliente> listarClientes() throws IOException {
		Cliente cliente;
		ArrayList<Cliente> lista = new ArrayList<>();
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			String sqlSelect = "SELECT id, nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email FROM cliente";
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				try (ResultSet rs = stm.executeQuery();) {
					while (rs.next()) {
						cliente = new Cliente();
						cliente.setId(rs.getInt("id"));
						cliente.setNome(rs.getString("nome"));
						cliente.setCidade(rs.getString("cidade"));
						cliente.setEstado(rs.getString("Estado"));
						cliente.setBairro(rs.getString("bairro"));
						cliente.setLogradouro(rs.getString("logradouro"));
						cliente.setNumero(rs.getString("numero"));
						cliente.setComplemento(rs.getString("complemento"));
						cliente.setCep(rs.getString("cep"));
						cliente.setFone(rs.getString("fone"));
						lista.add(cliente);
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
		return lista;
	}

	public ArrayList<Cliente> listarClientes(String chave) throws IOException {
		Cliente cliente;
		ArrayList<Cliente> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, cidade, estado, bairro, logradouro, numero, complemento, cep, fone, email FROM cliente where upper(nome) like ?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obterConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
				try (ResultSet rs = stm.executeQuery();) {
					while (rs.next()) {
						cliente = new Cliente();
						cliente.setId(rs.getInt("id"));
						cliente.setNome(rs.getString("nome"));
						cliente.setCidade(rs.getString("cidade"));
						cliente.setEstado(rs.getString("estado"));
						cliente.setBairro(rs.getString("bairro"));
						cliente.setLogradouro(rs.getString("logradouro"));
						cliente.setNumero(rs.getString("numero"));
						cliente.setComplemento(rs.getString("complemento"));
						cliente.setCep(rs.getString("cep"));
						cliente.setFone(rs.getString("fone"));
						lista.add(cliente);
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
		return lista;
	}
}

