<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
    <c:import url="_CODIGOS/head.jsp"/>
  <body>
  	<title>Cadastre-se - Papiro Cartório</title>
    <c:import url="_CHATBOT/chatbot.jsp"/> 
    <c:import url="_CODIGOS/header.jsp"/> 
	
    <main role="main">
<body>
					
	 <div style="padding-top: 60px;" class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
        
	<form action="controller.do" method="post">
            <div  class="row"> 
            	<div class="form-group col-md-6">
					<label for="nome">Usuario</label>
					<input type="text" class="form-control" name="usuario" id="usuario" required maxlength="16" placeholder="Usuario">        	
            	</div>
            	<div class="form-group col-md-6">
            		<label for="nome">Senha</label>
                    <input type="password" class="form-control" name="senha" id="senha" required maxlength="18" placeholder="Senha">
            	</div>
            </div>
                        <hr />
            <div id="actions" class="row">
                <div class="col-md-12" align="center">
                    <button type="submit" class="btn btn-primary" name="command" value="CriarUsuario">Cadastrar</button>
                </div>
            </div>
           </form>

              <c:import url="_CODIGOS/rodape.jsp"/> 
          
          </div><!-- /.row -->
        </div><!-- /.row -->
 
  </body>
</html>