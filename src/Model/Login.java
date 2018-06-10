package Model;

import java.io.Serializable;

public class Login implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String usuario;
	private String senha;

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Usuario [usuario =" + usuario + ", senha =" + senha
				+ "]";
	}
}
