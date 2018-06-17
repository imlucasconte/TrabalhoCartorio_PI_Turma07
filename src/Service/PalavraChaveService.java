package Service;

import DAO.PalavraChaveDAO;
import Model.PalavraChave;

import java.util.ArrayList;

/**
 * Created by daniel on 15/04/18.
 */
public class PalavraChaveService {

	public PalavraChaveDAO dao = new PalavraChaveDAO();
	PerguntaService per = new PerguntaService();
	public ArrayList<PalavraChave> encontraPalavrasChavesPorPergunta(String pergunta) {

		ArrayList<String> perguntaResp = per.quebraResposta(pergunta);
		ArrayList<PalavraChave> palavraChaves = dao.buscaTodasPalavraChaves();
		ArrayList<PalavraChave> palavrasNaPergunta = new ArrayList<>();
		
		for (PalavraChave palavraChave : palavraChaves) {
			if (perguntaResp.contains(palavraChave.getPalavra())) {
				palavrasNaPergunta.add(palavraChave);
			}
		}
		return palavrasNaPergunta;
	}
}