package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Cliente;
import Service.ClienteService;

public class EditarCliente implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pFone = request.getParameter("fone");
		String pEmail = request.getParameter("email");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}

		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setNome(pNome);
		cliente.setFone(pFone);
		cliente.setEmail(pEmail);
		ClienteService cs = new ClienteService();
		
		RequestDispatcher view = null;
		
		cliente = cs.carregar(cliente.getId());
		request.setAttribute("cliente", cliente);
		view = request.getRequestDispatcher("AlterarCliente.jsp");		
		
		view.forward(request, response);

	}

	public int busca(Cliente cliente, ArrayList<Cliente> lista) {
		Cliente to;
		for(int i = 0; i < lista.size(); i++){
			to = lista.get(i);
			if(to.getId() == cliente.getId()){
				return i;
			}
		}
		return -1;
	}

}
