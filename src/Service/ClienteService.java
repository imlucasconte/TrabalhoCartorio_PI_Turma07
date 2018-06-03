package Service;

import java.io.IOException;

import Model.Cliente;
import DAO.ClienteDAO;


public class ClienteService {
	ClienteDAO dao = new ClienteDAO();
	
	public int criar(Cliente cliente) throws IOException {
		return dao.criar(cliente);
	}
	
	public void atualizar(Cliente cliente) throws IOException {
		dao.atualizar(cliente);
	}
	
	public void excluir(int id) throws IOException {
		dao.excluir(id);
	}
	
	public Cliente carregar(int id) throws IOException {
		return dao.carregar(id);
	}

}
