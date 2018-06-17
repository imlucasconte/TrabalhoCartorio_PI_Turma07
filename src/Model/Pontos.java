package Model;

import java.io.Serializable;

public class Pontos implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int idPalavraChave;
	private int idResposta;
	private int pontos;
	
	public Pontos() {
	}
	
	public Pontos(int idPalavraChave, int idResposta, int pontos) {
		this.idPalavraChave = idPalavraChave;
		this.idResposta = idResposta;
		this.pontos = pontos;
	}
	
	public int getIdPalavraChave() {
		return idPalavraChave;
	}

	public void setIdPalavraChave(int idPalavraChave) {
		this.idPalavraChave = idPalavraChave;
	}

	public int getIdResposta() {
		return idResposta;
	}

	public void setIdResposta(int idResposta) {
		this.idResposta = idResposta;
	}

	public int getPontos() {
		return pontos;
	}

	public void setPontos(int pontos) {
		this.pontos = pontos;
	}	
}
