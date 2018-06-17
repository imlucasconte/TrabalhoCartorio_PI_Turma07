package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChatbotDAO;
import Model.Cliente;
import Model.Chatbot;
import Model.Conversa;
import Model.Resposta;
import Model.SessaoUsuario;
import Model.Dash;
import Service.Atend_ConversaService;
import Service.AtendimentoService;
import Service.ChatbotService;

public class ChatBot implements Command {
	public static final String CHAT = "chat";
	public static final String RESPOSTA_NAO_ENCONTRADA = "Desculpe, mas n�o tenho a resposta para sua pergunta! Voc� pode reformular a sua pergunta?";
	public static final String ATT_PERG = "pergunta";
	public ChatbotService chatService = new ChatbotService();
	ChatbotDAO chatJ = new ChatbotDAO();

	private static final long serialVersionUID = 1L;

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Chatbot chat = (Chatbot) session.getAttribute(CHAT);
		String pergunta = request.getParameter(ATT_PERG);

		String respostaA = chatJ.TirarEspeciais(pergunta);
		String respostaB = chatJ.removeAccents(respostaA);
		Resposta resposta = chatService.buscaResposta(respostaB.toLowerCase());

		// Adicionando ao Banco a Conversa
		if (resposta == null) {

			chat.addConversa(pergunta, RESPOSTA_NAO_ENCONTRADA);

		} else {
			chat.addConversa(pergunta, resposta.getValor());

		}
		
		Conversa conversa = new Conversa();
		request.setAttribute("conversa", conversa);
		// veicular o atendimento com a resposta
		Atend_ConversaService ate = new Atend_ConversaService();
		ate.Select();
	
        session.setAttribute("SessaoUsuario", new SessaoUsuario());

		Cliente cliente = (Cliente) session.getAttribute("cliente");
		
		request.setAttribute("conversa", conversa);

		session.setAttribute(CHAT, chat);
		session.setAttribute("Cliente", cliente);

		RequestDispatcher view = request.getRequestDispatcher("chat.jsp");
		view.forward(request, response);

	}
}
