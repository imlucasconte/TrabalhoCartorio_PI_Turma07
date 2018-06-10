package Service;

import java.io.IOException;

import Model.Chatbot;
import DAO.ChatbotDAO;

public class ChatbotService {
	ChatbotDAO dao = new ChatbotDAO();
	
	public int responder(Chatbot chatbot) throws IOException {
		return dao.criar(chatbot);
	}
	
	public Chatbot perguntar(int id) throws IOException {
		return dao.carregar(id);
	}

}
