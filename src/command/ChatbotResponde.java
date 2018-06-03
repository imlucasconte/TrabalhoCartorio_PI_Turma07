package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Chatbot;
import Service.ChatbotService;

public class ChatbotResponde implements Command {

		@Override
		public void executar(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			String pId = request.getParameter("id");
			String pUsuario = request.getParameter("usuario");
			String pSenha= request.getParameter("senha");
			String pResposta = request.getParameter("respsota");
			String pPergunta = request.getParameter("pergunta");
			int id = -1;
			try {
				id = Integer.parseInt(pId);
			} catch (NumberFormatException e) {
	
			}
	
			Chatbot chatbot = new Chatbot();
			chatbot.setId(id);
			chatbot.setUsuario(pUsuario);
			chatbot.setSenha(pSenha);
			chatbot.setResposta(pResposta);
			chatbot.setPergunta(pPergunta);
			ChatbotService cs = new ChatbotService();
	
			RequestDispatcher view = null;
			HttpSession session = request.getSession();
	
			cs.criar(chatbot);
			ArrayList<Chatbot> lista = new ArrayList<>();
			lista.add(chatbot);
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("Menu.jsp");
	
			view.forward(request, response);

	}

	}