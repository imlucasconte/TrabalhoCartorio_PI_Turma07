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

		
	
	public static void main(String args[]) {
		
		System.out.println("resposta");
	}
		
		@Override
		public void executar(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			String pId = request.getParameter("id");
			String pResposta = request.getParameter("resposta");
			String pPergunta = request.getParameter("pergunta");
			int id = -1;
			try {
				id = Integer.parseInt(pId);
			} catch (NumberFormatException e) {
	
			}
	
			Chatbot chatbot = new Chatbot();
			chatbot.setId(id);
			chatbot.setResposta(pResposta);
			chatbot.setPergunta(pPergunta);
			
			String resposta = "ola";
			
             
	}

	}