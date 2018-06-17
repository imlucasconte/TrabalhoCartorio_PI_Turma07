<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html> 
<html lang="pt-br">
<head>
<c:import url="_CODIGOS/head.jsp"/>
	<title>Fazer login - Cartório Papiro</title>
	<meta charset="utf-8">
	<c:import url="_CODIGOS/header.jsp"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
  <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <link rel="stylesheet" type="text/css" href="_CSS/style.css">
</head>
<body style="background: url(_IMAGENS/cartorio.jpg);">
	<main role="main">
			<div style="padding-top: 20px;" class="modal-dialog text-center">
			<div class="col-sm-8 main-section">
				<div class="modal-content">
					<div class="col-12 user-img">
						<img src="_IMAGENS/face.png">
					</div> 
					
					<form action="controller.do" method="POST"class="col-12">
						<div class="form-group">
							<label for="exampleInputEmail1">Usuario</label>
			    			<input name="username" id="username" type="text" class="form-control" id="exampleInputEmail1" placeholder="Usuario">
						</div>				
						<div class="form-group">
							<label for="exampleInputPassword1">Senha</label>
							
			  			    <input name="password" id="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
						</div>
						  <div class="controls">
			        <button class="btn btn-success" type="submit" name="command" value=RealizarLogin>Logar</button>
			      </div>
						<div class="col-12 forgot"> 
						<a href="cadastrar.jsp">Cadastre-se</a>
						</br>
						<a href="login_adm.jsp">Usuario avançado</a>
						</div>
					</form>
							<%
						String usuario = request.getParameter("usuario");
						String senha = request.getParameter("senha");
									
									if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty()){
									session.setAttribute("usuario", usuario);
									response.sendRedirect("logado.jsp");
									}
					       %>
				 </div>
			</div>
		</div>
  <c:import url="_CODIGOS/rodape.jsp"/> 
</body>
</html>

