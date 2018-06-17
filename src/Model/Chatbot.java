package Model;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import DAO.ChatbotDAO;
import Service.ClienteService;
import Service.UsuarioService;

public class Chatbot {

	public List<Conversa> conversas;
	public List<Atend_Conversa> conversa_at;

	public Chatbot() {
		conversas = new ArrayList<>();
	}
	ChatbotDAO bot = new ChatbotDAO();

	public void addConversa_at(String pergunta_usuario){
		conversa_at.add(new Atend_Conversa(pergunta_usuario));
		Atend_Conversa atd = new Atend_Conversa();
		atd.setPergunta_usuario(pergunta_usuario);
		UsuarioService us = new UsuarioService();
		us.Conversa_00at(atd);
	}

	public void addConversa(String pergunta, String resposta) {
		conversas.add(new Conversa(pergunta, resposta));
		
		// para passar conversa para o banco
		Conversa conv = new Conversa();
		conv.setPergunta(pergunta);
		conv.setResposta(resposta);
		
		ClienteService cl = new ClienteService();
		cl.Conversa0(conv);
		
	}

	public List<Conversa> getConversas() {
		return new ArrayList<>(conversas);
	}

	//------------------- Conversa com o atendente -----------------\\

	public  final List<Mensagem> conversasAt = new ArrayList<Mensagem>();

	public final LocalDateTime inicioConversa = LocalDateTime.now();


	public void addMensagem(String nome, String mensagem) {
		conversasAt.add(new Mensagem(nome,mensagem));
	}

	public List<Mensagem> getConversasAt() {
		return conversasAt;
	}

	public long getTempoSessao() {
		return Duration.between(inicioConversa, LocalDateTime.now()).get(ChronoUnit.MINUTES);
	}
}