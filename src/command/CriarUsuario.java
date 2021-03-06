package command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Usuario;
import Service.UsuarioService;

public class CriarUsuario implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pId = request.getParameter("id");
		String pUser = request.getParameter("usuario");
		String pSenha = request.getParameter("senha");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}
		//transformando senha do usuario em bytes
		Usuario usuario = new Usuario();
		usuario.setUsername(pUser);
		usuario.setPassword(pSenha);

		UsuarioService service = new UsuarioService();
		String path = request.getContextPath();
		System.out.println(path);
		try {
			System.out.println("Entrei na classe command");
			service.criarUsuario(usuario);
			response.sendRedirect("Menu.jsp");
		
		}catch(Exception e) {
			System.out.println(e);
		}
	
		
		
	}

}
