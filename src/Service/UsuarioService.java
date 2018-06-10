package Service;
import Model.Usuario;

import java.io.IOException;

import DAO.UsuarioDAO;

public class UsuarioService {
	UsuarioDAO dao;
	
	public UsuarioService() {
		dao = new UsuarioDAO();
	}
	
	public boolean validarLogin(Usuario usuario) {
		return dao.validarLogin(usuario);
	}

	public int criarUsuario(Usuario usuario) throws IOException {
		return dao.criarUsuario(usuario);
	}
	
}
