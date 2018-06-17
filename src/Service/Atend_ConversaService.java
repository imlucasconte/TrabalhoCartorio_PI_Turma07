package Service;

import DAO.Atend_ConversaDAO;
import Model.Dash;

public class Atend_ConversaService {
	
	Atend_ConversaDAO dao = new Atend_ConversaDAO();
	
	public int Atend(Dash ac) {
		
		return dao.Atendimento_conversa(ac);
	}
	public void Select() {
		dao.SelctAten();
	}
}
