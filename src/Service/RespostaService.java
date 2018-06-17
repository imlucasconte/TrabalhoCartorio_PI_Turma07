package Service;

import DAO.RespostaDAO;
import Model.PalavraChave;
import Model.Resposta;

import java.util.*;

public class RespostaService {
    private static int cont=1;
    public static RespostaDAO dao = new RespostaDAO();

    public static  Resposta buscaRespostaApropriada(ArrayList<PalavraChave> palavraChaves) {
        ArrayList<Integer> idsPalavras = getPalvrasIds(palavraChaves);

        ArrayList<Resposta> respostas = dao.buscaRespostaPorPalavrasChaves(idsPalavras);

        ArrayList<Resposta> respostasPontuadas = obtemRespostasPontuadasPorRepeticao(respostas);

        Collections.sort(respostasPontuadas);

        if (respostasPontuadas.size() > 0) {
            return respostasPontuadas.get(0);
        }
        return null;
    }
    public static  Resposta SimBotao(ArrayList<PalavraChave> palavraChaves) {
        ArrayList<Integer> idsPalavras = getPalvrasIds(palavraChaves);
        ArrayList<Resposta> respostas = dao.buscaRespostaPorPalavrasChaves(idsPalavras);
        ArrayList<Resposta> respostasPontuadas = obtemRespostasPontuadasPorRepeticao(respostas);
        if(cont>2){

            cont=0;
        }
        if (respostasPontuadas.size() > 0) {
            return respostasPontuadas.get(cont++);
        }
        return null;
    }

    public static ArrayList<Integer> getPalvrasIds(ArrayList<PalavraChave> palavraChaves) {
        List<Integer> idsPalavras = new ArrayList<>();
        for (PalavraChave palavraChave : palavraChaves) {
            idsPalavras.add(palavraChave.getId());
        }
        return (ArrayList<Integer>) idsPalavras;
    }
    public static ArrayList<Resposta> obtemRespostasPontuadasPorRepeticao(List<Resposta> respostas) {
        Map<Integer, List<Resposta>> respostaMapPorId = new HashMap<>();
        for (Resposta resposta : respostas) {
            Integer id = resposta.getId();
            if (respostaMapPorId.containsKey(id)) {
                List<Resposta> respostaDoId = respostaMapPorId.get(id);
                respostaDoId.add(resposta);
            } else {
                List<Resposta> respostaDoId = new ArrayList<>();
                respostaDoId.add(resposta);
                respostaMapPorId.put(id, respostaDoId);
            }
        }

        List<Resposta> repostasPontuadas = new ArrayList<>();
        for (Map.Entry<Integer, List<Resposta>> entry : respostaMapPorId.entrySet()) {
            List<Resposta> respotasDoId = entry.getValue();
            Resposta resposta = respotasDoId.get(0);
            resposta.setPontuacao(respotasDoId.size());
            repostasPontuadas.add(resposta);
        }
        return (ArrayList<Resposta>) repostasPontuadas;
    }
}