<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<%
   
    String sala = (String) application.getAttribute("sala");
%>
<% response.setIntHeader("Reflesh", 5); %>
<html>
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
	<meta name="viewport" content="width=device-width,initial-scale=1"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="refresh" content="20"/>
	<link rel="stylesheet" href="_CSS/bootstrap.css">
	<link rel="stylesheet" href="_CSS/chatadm.css">
	<link href="_CSS/bootstrap.min.css" rel="stylesheet">
	      <link rel="stylesheet" type="text/css" href="_CHATBOT/custom.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="_CHATBOT/chat.js" type="text/javascript"></script>
<title>Chatbot - Escriba Backup</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <c:import url="_CODIGOS/header.jsp"/>
<c:import url="_CODIGOS/head.jsp"/>
     <!--"
     <div class="window">
      <div class="janela">
        <div class="gerenciador">  
          <span>BEM-VINDO !</span> 
          <span class="fechar">X</span>
        </div>
        <p>Efetue o login para conversar com o Chatbot. </p> 
        <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Efetuar Login</a></p>
      </div> 
    </div>
    <script type="text/javascript">
      $(".fechar").click(function() {
        $(".window").css({display: "none"});
      });
    </script> -->
     
    <style type="text/css">
        #sala { margin: auto; border: 1px solid #999; padding: 6px; overflow: auto; width: 300px; height: 200px;}
    </style>

    <script type="text/javascript">
        function load() {
            document.getElementById("msg").focus();
        }
    </script>
</head>

<body onload="load()">
	<div class="container background-color: rgb(255,0,255);">
              <div class="row">
                  <div class="col-md-4 col-md-offset-4">
                      <div id="chatPanel" class="panel panel-info">
                          <div class="panel-heading">
                <strong><span class="glyphicon glyphicon-globe"></span> Fale Comigo !!!</strong>
              </div>
<div id="sala"><%=sala%></div> 
			    <div class="container">
			<form action="Go" method="post" style="text-align: center">
			 <div class="input-group">
			    <input type="text" name="msg" style="width: 244px" id="msg"/>
			    <input class="btn btn-info" type="submit" value="Enviar" style="width: 60px"/>
				</div>
				
		</form>
    </div>
      </div>
     	 </div>
    <hr>
      <div class="container marketing main_contato">
				<div style="text-align: center; ">
					
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
			</div>
	 <c:import url="_CODIGOS/rodape.jsp"/>

    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="popper.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="holder.min.js"></script>
  </body>
</html>
