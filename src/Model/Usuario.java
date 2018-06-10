package Model;

import java.io.Serializable;

public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;

	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Usuario(String usuario, String senha) {
		super();
		this.usuario = usuario;
		this.senha = senha;
	}




	private String usuario;
	private String senha;
	
	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
	}


	
	
	@Override
	public String toString() {
		return "Usuario [username=" + usuario + ", password=" + senha
				+ "]";
	}
}
