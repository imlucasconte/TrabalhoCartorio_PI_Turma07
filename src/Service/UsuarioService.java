package Service;
import Model.Usuario;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import DAO.UsuarioDAO;
import Utils.CryptoAES;

public class UsuarioService {
	UsuarioDAO dao;
	
	public UsuarioService() {
		dao = new UsuarioDAO();
	}
	
	public boolean validarLogin(Usuario usuario) {
		return dao.validarLogin(usuario);
	}
	
	public void criarUsuario(Usuario usuario) throws SQLException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, 
		BadPaddingException, InvalidAlgorithmParameterException, ClassNotFoundException, IOException {	
		CryptoAES crypto = new CryptoAES();
		
		//Buscando o arquivo onde se encontra minha chave para encryptar
		File chave = new File("/Users/lucasduarte/git/Java-SaoJudas/src/Utils","minhaChave");
		System.out.println("Entrei no service");
		crypto.geraCifra(usuario.getSenha(), chave);
		try {
			usuario.setSenha(crypto.getTextoCifrado());
		} catch (Exception e) {
			e.printStackTrace();
		}
		dao.criarUsuario(usuario);
	}
	
}
