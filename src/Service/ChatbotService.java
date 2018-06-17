package Service;


import Model.PalavraChave;
import Model.Resposta;

import java.util.ArrayList;


public class ChatbotService {

	public PalavraChaveService palavraChaveService = new PalavraChaveService();
	public RespostaService respostaService = new RespostaService();
	public Resposta buscaResposta(String pergunta) {
		
		ArrayList<PalavraChave> palavraChaves =  palavraChaveService.encontraPalavrasChavesPorPergunta(pergunta);
		return RespostaService.buscaRespostaApropriada(palavraChaves);
	}
	public Resposta SimBotaoo(String pergunta){
		ArrayList<PalavraChave> palavraChaves =  palavraChaveService.encontraPalavrasChavesPorPergunta(pergunta);
		return RespostaService.SimBotao(palavraChaves);
	}
}