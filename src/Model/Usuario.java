package Model;

import java.io.Serializable;

public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;

	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Usuario(String usuario, byte[] senha) {
		super();
		this.usuario = usuario;
		this.senha = senha;
	}




	private String usuario;
	private byte[] senha;
	
	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public byte[] getSenha() {
		return senha;
	}


	public void setSenha(byte[] senha) {
		this.senha = senha;
	}


	
	
	@Override
	public String toString() {
		return "Usuario [username=" + usuario + ", password=" + senha
				+ "]";
	}
}
