package Service;
import Model.Usuario;
import Model.Atend_Conversa;
import Service.AtendimentoService;

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
	AtendimentoService cs = new AtendimentoService();

	public int Conversa_00at(Atend_Conversa atd){
		cs.AdicionaPergunta(atd);
		return atd.getId_atendimento();
	}
}
