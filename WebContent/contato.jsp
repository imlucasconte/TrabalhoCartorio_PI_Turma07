<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
    <c:import url="_CODIGOS/head.jsp"/>
  <body>
    <c:import url="_CHATBOT/chatbot.jsp"/> 
    <c:import url="_CODIGOS/header.jsp"/> 
      <main role="main">
      
      <div class="container marketing main_contato">
				<div style="text-align: center; ">
					<img src="_IMAGENS/Logotipo.png" alt="">
					<p>Agora conversamos por Chat, para uma melhor experiencias e respostas mais rapidas.</p>
					<button type="button" class="botaosite-maior" name="button">CHAT ONLINE</button>
					<hr>
					<p style="text-align: left;">OUTROS MEIOS:</p>
					<div style="text-align: left">
						<span> <span class="icone facebook"></span><a href="#">FACEBOOK</a></span>
						<span> <span class="icone telefone"></span><a href="#">(11) 90000-0000</a></span>
						<span> <span class="icone email"></span><a href="#">email@email.com</a></span>
					</div>
					<script type="text/javascript">
						$(".botaosite-maior").click(function() {
							$(".chatativa").css({display: "none"});
			        $(".chat").css({display: "block"});
						});
					</script>
				</div>
        <!-- Three columns of text below the carousel -->
			</div>
      <!-- FOOTER -->
      <footer class="container al-center">
        <p>&copy; 2017-2018 PAPIRO, Inc. &middot; <a href="#">Todos os direitos Resevados</a> &middot;</p>
      </footer>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="popper.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="holder.min.js"></script>

  </body>
</html>
