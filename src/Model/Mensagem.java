package Model;

public class Mensagem{

    public int id_mensagem;
    public String nome;
    public String msg;

    public Mensagem(String nome, String msg) {
        this.nome = nome;
        this.msg = msg;

    }

    public Mensagem(){

    }
    public int getId_mensagem() {
        return id_mensagem;
    }

    public void setId_mensagem(int id_mensagem) {
        this.id_mensagem = id_mensagem;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
