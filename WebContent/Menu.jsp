<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
   <title>Menu - Papiro Cartorio </title>
       <c:import url="_CODIGOS/head.jsp"/>
  <body>
    <c:import url="_CHATBOT/chatbot.jsp"/> 
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
                <h1>Example headline.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="_IMAGENS/cartoriotabelionato.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>Another example headline.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="_IMAGENS/passaporte.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right" style="background-color: rgba(0,0,0,0.5); padding: 5px;">
                <h1>One more for good measure.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
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
            <h2 class="featurette-heading">Prisão em segunda instancia</h2>
            <p class="lead">O tema abordado é de grande relevância atualmente, pois não se encontra pacificado na doutrina e nem na jurisprudência, sendo o assunto discutido com fortes posicionamentos favoráveis e contrários, já que afrontaria a cláusula pétrea prevista no artigo 5º, LVII, da CRFB.</p>
            <p><b>Por Débora Viana</b></p>
            <a href="#"> <button class="botaosite-maior" type="button" name="button">Ler mais.</button> </a>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto"  src="_IMAGENS/prisao.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">A contribuição da psicanálise para a solução de conflitos em casos de alienação parental</h2>
            <p class="lead">Análise acerca das contribuições dos instrumentos da psicanálise frente aos conflitos que envolvem a alienação parental no Direito de Família.</p>
            <p><b>Por Leticia Fraga de Figueiredo</b></p>
            <a href="#"> <button class="botaosite-maior" type="button" name="button">Ler mais.</button> </a>

          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="_IMAGENS/psicanalise.jpg" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Crimes imprescritíveis e a corrupção</h2>
            <p class="lead">A ampliação do rol dos crimes imprescritíveis (verdadeiras garantias em prol da sociedade) por proposta de Emenda à Constituição, tal como ocorrera historicamente na promulgação da EC nº 45.</p>
            <p><b>Por Nairon Bastos Pereira</b></p>
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
