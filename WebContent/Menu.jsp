<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
   <title>Menu - Papiro Cart�rio </title>
       <c:import url="_CODIGOS/head.jsp"/>
  <body>
    <c:import url="_CODIGOS/header.jsp"/> 
    
    <div class="window">
      <div class="janela">
        <div class="gerenciador">
          <span>BEM-VINDO !</span>
          <span class="fechar">X</span>
        </div>
        <p>Efetue o login para conversar com o Chatbot.</p>
        <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Efetuar Login</a></p>
      </div>
    </div>
    <script type="text/javascript">
      $(".fechar").click(function() {
        $(".window").css({display: "none"});
      });
    </script>

      <!--  OS SLIDES V�O AQUI -->
    <main role="main">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="_IMAGENS/cadastre.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>T�tulo Eleitoral - Biometria</h1>
                <p>Para colher a biometria em todos os cart�rios e postos do Estado,
				e nas unidades do Poupatempo com servi�os eleitorais, � necess�rio agendar dia e hor�rio
				para comparecimento. Assim, o eleitor evita filas e � atendido com maior rapidez..</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="_IMAGENS/cartoriotabelionato.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>T�tulo de Eleitor</h1>
                <p>Todo brasileiro que completou 18 anos de idade, mesmo residindo no
				exterior, tem por obriga��o alistar-se na Justi�a Eleitoral, a fim de obter o seu
				T�tulo de Eleitor. Para o cidad�o brasileiro entre 16 e 18 anos de idade, incompletos,
				o alistamento eleitoral e o voto s�o facultativos. Para solicitar os servi�os eleitorais,
				� necess�rio comparecer ao Consulado ou Embaixada de sua jurisdi��o, preencher o 
				Requerimento de Alistamento Eleitoral (RAE), levando original dos documentos indicados.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="_IMAGENS/passaporte.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>Solicite sua certid�o ou 2� Via</h1>
                <p>Facilite sua vida ou da sua empresa, solicitando certid�es 
				de todos os cart�rios do Brasil.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
           <!-- *************************************************************** -->
      <div class="container marketing">
        <hr class="featurette-divider">
        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">A Jurisdi��o Constitucional e a cria��o do CNJ: 
			Um caso concreto de interpreta��o</h2>
            <p class="lead">Fruto do esp�rito de reforma e aperfei�oamento institucional 
			da Emenda 45/2004, o Conselho Nacional de Justi�a encontra-se, desde sua cria��o, no 
			centro de candentes debates acerca de sua natureza e atribui��es.</p>
			Para alguns, uma forma velada de cerceamento institucional do Poder Judici�rio. 
			Para outros setores da sociedade, um importante e ben�fico avan�o em dire��o ao 
			fortalecimento da democracia.
            <p><b>Por Rui Gustavo Camargo Viana</b></p>
            <a href="#"> <button class="botaosite-maior" type="button" name="button">Ler mais.</button> </a>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto"  src="_IMAGENS/prisao.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">� correto validar o
			sil�ncio como anu�ncia na usucapi�o extrajudicial? N�o!</h2>
			            <p class="lead">Em salutar novidade, conferindo cores mais
			vivas ao movimento de desjudicializa��o dos lit�gios, a partir dos
			ventos que sopram do direito europeu,
			            notadamente da Espanha e da It�lia, o CPC de 2015
			(emprestando reda��o ao art. 216-A da Lei n.6.015/73), estabeleceu a
			possibilidade de reconhecimento de usucapi�o
			            (aquisi��o origin�ria da propriedade e de outros direitos
			reais suscet�veis de posse) em sede cartor�ria, sem a necessidade de
			homologa��o judicial ou a interven��o
			             fiscalizat�ria do MP.</p>
			             <p>A pretens�o usucaptiva precisa ser exercitada por meio
			de advogado ou defensor p�blico (com o prop�sito de evitar perdas de
			direitos), comprovando documentalmente e
			             por ata notarial os requisitos exigidos pela norma para a
			aquisi��o origin�ria.</p>
            <p><b>Por  Cristiano Chaves de Farias</b></p>
            <a href="#"> <button class="botaosite-maior" type="button" name="button">Ler mais.</button> </a>

          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="_IMAGENS/psicanalise.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
			            <h2 class="featurette-heading">O Brasil � o pa�s das
			carreiras jur�dicas</h2>
			            <p class="lead">Neste ano, vimos um interesse cada vez
			maior da popula��o em acompanhar os desdobramentos de opera��es como a
			Lava Jato,
			            que se tornou um marco no combate � corrup��o no Brasil.
			Mas, isso vai muito al�m apenas da quest�o social. A��es da Pol�cia
			Federal despertaram tamb�m o
			            olhar daqueles que est�o tra�ando seu objetivo
			profissional e querem, de alguma forma, promover mudan�as no cotidiano
			do pa�s. Se observarmos os n�meros do
			            Minist�rio da Educa��o, vemos que o n�mero de matr�culas
			no curso de Direito cresceu 35% nos �ltimos cinco anos, enquanto o
			Pa�s j� somava 1 milh�o de advogados.
			             E, n�s do CERS vimos um crescimento de 36% no n�mero de
			alunos em busca de cursos preparat�rios para concursos p�blicos e OAB.
			Ent�o, porque n�o dizer que o Brasil �
			              o pa�s das carreiras jur�dicas?</p>
			              <p>E isso n�o � uma moda passageira. Profiss�o
			centen�ria, vemos o Direito como uma tend�ncia para os pr�ximos anos,
			tendo em vista o verdadeiro legado que as a��es da PF e do judici�rio
			est�o deixando para as pr�ximas gera��es de profissionais. Mais do que
			nunca temos a certeza de que a lei vale para todos e precisamos de
			pessoas que coloquem isso em pr�tica.
			              Por�m, isso n�o fica restrito apenas � esfera p�blica.
			As empresas tamb�m se esfor�ar�o cada vez mais para ter uma �rea
			jur�dica qualificada para combater atos il�citos.</p></p>
            <p><b>Por Renato Saraiva</b></p>
            <a href="#"> <button class="botaosite-maior" type="button" name="button">Ler mais.</button> </a>

          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="_IMAGENS/corrupcao.png" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>
        <hr class="featurette-divider">
      </div><!-- /.container -->
          <c:import url="_CODIGOS/rodape.jsp"/> 
    </main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="_JS/popper.min.js"></script>
    <script src="_JS/bootstrap.min.js"></script>
    <script src="_JS/holder.min.js"></script>

  </body>
</html>
