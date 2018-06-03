package Service;

import java.io.IOException;

import Model.Chatbot;
import DAO.ChatbotDAO;

public class ChatbotService {
	ChatbotDAO dao = new ChatbotDAO();
	
	public int criar(Chatbot chatbot) throws IOException {
		return dao.criar(chatbot);
	}
	
	public Chatbot carregar(int id) throws IOException {
		return dao.carregar(id);
	}

}
