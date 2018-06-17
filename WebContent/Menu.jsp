<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
   <title>Menu - Papiro Cartório </title>
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

      <!--  OS SLIDES VÃO AQUI -->
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
                <h1>Título Eleitoral - Biometria</h1>
                <p>Para colher a biometria em todos os cartórios e postos do Estado,
				e nas unidades do Poupatempo com serviços eleitorais, é necessário agendar dia e horário
				para comparecimento. Assim, o eleitor evita filas e é atendido com maior rapidez..</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="_IMAGENS/cartoriotabelionato.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>Título de Eleitor</h1>
                <p>Todo brasileiro que completou 18 anos de idade, mesmo residindo no
				exterior, tem por obrigação alistar-se na Justiça Eleitoral, a fim de obter o seu
				Título de Eleitor. Para o cidadão brasileiro entre 16 e 18 anos de idade, incompletos,
				o alistamento eleitoral e o voto são facultativos. Para solicitar os serviços eleitorais,
				é necessário comparecer ao Consulado ou Embaixada de sua jurisdição, preencher o 
				Requerimento de Alistamento Eleitoral (RAE), levando original dos documentos indicados.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="_IMAGENS/passaporte.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>Solicite sua certidão ou 2ª Via</h1>
                <p>Facilite sua vida ou da sua empresa, solicitando certidões 
				de todos os cartórios do Brasil.</p>
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
            <h2 class="featurette-heading">A Jurisdição Constitucional e a criação do CNJ: 
			Um caso concreto de interpretação</h2>
            <p class="lead">Fruto do espírito de reforma e aperfeiçoamento institucional 
			da Emenda 45/2004, o Conselho Nacional de Justiça encontra-se, desde sua criação, no 
			centro de candentes debates acerca de sua natureza e atribuições.</p>
			Para alguns, uma forma velada de cerceamento institucional do Poder Judiciário. 
			Para outros setores da sociedade, um importante e benéfico avanço em direção ao 
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
            <h2 class="featurette-heading">É correto validar o
			silêncio como anuência na usucapião extrajudicial? Não!</h2>
			            <p class="lead">Em salutar novidade, conferindo cores mais
			vivas ao movimento de desjudicialização dos litígios, a partir dos
			ventos que sopram do direito europeu,
			            notadamente da Espanha e da Itália, o CPC de 2015
			(emprestando redação ao art. 216-A da Lei n.6.015/73), estabeleceu a
			possibilidade de reconhecimento de usucapião
			            (aquisição originária da propriedade e de outros direitos
			reais suscetíveis de posse) em sede cartorária, sem a necessidade de
			homologação judicial ou a intervenção
			             fiscalizatória do MP.</p>
			             <p>A pretensão usucaptiva precisa ser exercitada por meio
			de advogado ou defensor público (com o propósito de evitar perdas de
			direitos), comprovando documentalmente e
			             por ata notarial os requisitos exigidos pela norma para a
			aquisição originária.</p>
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
			            <h2 class="featurette-heading">O Brasil é o país das
			carreiras jurídicas</h2>
			            <p class="lead">Neste ano, vimos um interesse cada vez
			maior da população em acompanhar os desdobramentos de operações como a
			Lava Jato,
			            que se tornou um marco no combate à corrupção no Brasil.
			Mas, isso vai muito além apenas da questão social. Ações da Polícia
			Federal despertaram também o
			            olhar daqueles que estão traçando seu objetivo
			profissional e querem, de alguma forma, promover mudanças no cotidiano
			do país. Se observarmos os números do
			            Ministério da Educação, vemos que o número de matrículas
			no curso de Direito cresceu 35% nos últimos cinco anos, enquanto o
			País já somava 1 milhão de advogados.
			             E, nós do CERS vimos um crescimento de 36% no número de
			alunos em busca de cursos preparatórios para concursos públicos e OAB.
			Então, porque não dizer que o Brasil é
			              o país das carreiras jurídicas?</p>
			              <p>E isso não é uma moda passageira. Profissão
			centenária, vemos o Direito como uma tendência para os próximos anos,
			tendo em vista o verdadeiro legado que as ações da PF e do judiciário
			estão deixando para as próximas gerações de profissionais. Mais do que
			nunca temos a certeza de que a lei vale para todos e precisamos de
			pessoas que coloquem isso em prática.
			              Porém, isso não fica restrito apenas à esfera pública.
			As empresas também se esforçarão cada vez mais para ter uma área
			jurídica qualificada para combater atos ilícitos.</p></p>
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
