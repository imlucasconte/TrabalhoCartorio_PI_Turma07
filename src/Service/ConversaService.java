package Service;

import DAO.ConversaDAO;
import Model.Conversa;

public class ConversaService {
	
	ConversaDAO dao = new ConversaDAO();

	public int Conversa01(Conversa conv) {

		return dao.guardar_respostata(conv);
	}
}
