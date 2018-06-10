package Model;
import java.io.Serializable;
public class Chatbot implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String usuario;
	private String senha;
	private String resposta;
	private String pergunta;

	public Chatbot() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
	}
	
	public String getPergunta() {
		return pergunta;
	}

	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}
}
