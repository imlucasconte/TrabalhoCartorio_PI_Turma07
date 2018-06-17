package DAO;

import DAO.ChatbotDAO;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import Model.Mensagem;
public class SessaoUsuario {
	
		
	
   public  final List<Mensagem> conversasAt = new ArrayList<Mensagem>();

    public  final LocalDateTime inicioConversa = LocalDateTime.now();

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String nome = new String();



    ChatbotDAO dao = new ChatbotDAO();
    public void addMensagem(String nome, String mensagem) {
       
    	conversasAt.add(new Mensagem(nome,mensagem));
    }

    public List<Mensagem> getConversasAt() {
        return conversasAt;
    }

    public  long getTempoSessao() {
        return Duration.between(inicioConversa, LocalDateTime.now()).get(ChronoUnit.SECONDS);
    }
    public int getContatoHumano(){

        return dao.PegaQuantidadeDeAtendimentoHumano();
    }
    public int getPegaPrimeira(){
        return dao.pegaQuantidadeResolvidaDePrimeira();
    }
    public int getPegaSegunda(){
        return dao.pegaQuantidadeResolvidaDeSegunda();
    }
    public int getPegaTerceira(){
        return dao.pegaQuantidadeResolvidaDeTerceira();
    }

    int id;

    public int getId() {
        return id;
    }
}
