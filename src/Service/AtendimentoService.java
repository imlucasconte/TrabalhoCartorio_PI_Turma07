package Service;

import DAO.AtendimentoDAO;
import DAO.ConversaAtendimentoDAO;
import Model.Atendimento;
import Model.Mensagem;
import Model.Atend_Conversa;

public class AtendimentoService {
	ConversaAtendimentoDAO Adao = new ConversaAtendimentoDAO();
	AtendimentoDAO dao = new AtendimentoDAO();

	public int Criar_Ate(Atendimento atd) {
		return dao.cadastroAtendimento(atd);
	}

	public int AdicionaResposta(Atend_Conversa atd){
		return Adao.AdicionaRespostaBanco(atd);
	}

	public void AdicionaConversaBanco(String nome,String msg) {
		Adao.AdicionaConversaBanco(nome, msg);
	}

	public int AdicionaPergunta(Atend_Conversa atd){
		return Adao.AdicionaPerguntaBanco(atd);
	}
	
	public int AdicionaConversa(Mensagem mensagem_at)  {
		return Adao.AdicionarMensagem(mensagem_at);
	}
}

