package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Cliente;
import Service.ClienteService;

public class CriarCliente implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pId = request.getParameter("id");
		String pUsuario = request.getParameter("usuario");
		String pSenha = request.getParameter("senha");
		String pNome = request.getParameter("nome");
		String pCidade = request.getParameter("cidade");
		String pEstado = request.getParameter("estado");
		String pBairro = request.getParameter("bairro");
		String pLogradouro = request.getParameter("logradouro");
		String pNumero = request.getParameter("numero");
		String pComplemento = request.getParameter("complemento");
		String pCep = request.getParameter("cep");
		String pFone = request.getParameter("fone");
		String pEmail = request.getParameter("email");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}

		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setUsuario(pUsuario);
		cliente.setSenha(pSenha);
		cliente.setNome(pNome);
		cliente.setCidade(pCidade);
		cliente.setEstado(pEstado);
		cliente.setBairro(pBairro);
		cliente.setLogradouro(pLogradouro);
		cliente.setNumero(pNumero);
		cliente.setComplemento(pComplemento);
		cliente.setCep(pCep);
		cliente.setFone(pFone);
		cliente.setEmail(pEmail);
		ClienteService cs = new ClienteService();

		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		cs.criar(cliente);
		ArrayList<Cliente> lista = new ArrayList<>();
		lista.add(cliente);
		session.setAttribute("lista", lista);
		view = request.getRequestDispatcher("Menu.jsp");

		view.forward(request, response);

	}

	public int busca(Cliente cliente, ArrayList<Cliente> lista) {
		Cliente to;
		for (int i = 0; i < lista.size(); i++) {
			to = lista.get(i);
			if (to.getId() == cliente.getId()) {
				return i;
			}
		}
		return -1;
	}

}