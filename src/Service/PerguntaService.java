package Service;

import Model.PalavraChave;
import Model.Resposta;
import java.util.ArrayList;
import DAO.RespostaDAO;

public class PerguntaService {
	
	RespostaDAO dao = new RespostaDAO();
	
 	public Resposta obterPalavraChave(PalavraChave palavraChave1) {
 		String [] pl;
 		pl = palavraChave1.getPalavra().split(" ");
 		ArrayList<PalavraChave> palavraChav = new ArrayList<PalavraChave>();
 		
 		for(int i = 0; i<pl.length; i++) {
 			palavraChav.add(palavraChave1);
 		}
 		return RespostaService.buscaRespostaApropriada(palavraChav);
 	}

	public ArrayList<String> quebraResposta(String pergunta) {
		String [] vet;
		vet= pergunta.split(" ");
		ArrayList<String> listPergunta = new ArrayList<String>();
		for(int i = 0; i<vet.length; i++) {
			listPergunta.add(vet[i]);
		}
		return listPergunta;
	}

}
