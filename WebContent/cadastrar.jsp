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

      <div style="padding-top: 60px;" class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
                    
          <form action="controller.do" method="post">
            <!-- area de campos do form -->
            
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" required maxlength="220" placeholder="Nome Completo">
                </div>
            </div>
            
             <div class="row"> 
            	<div class="form-group col-md-6">
					<label for="nome">Cidade</label>
					<input type="text" class="form-control" name="cidade" id="cidade" required maxlength="220" placeholder="Cidade">        	
            	</div>
   <!--  
       	      <div class="form-group col-md-2">
            		<label for="nome">UF</label>
				 <select type="text" class="form-control" id="estado" name="estado" required maxlength="2" placeholder="UF">
					<option value="null">UF</option>
				    <option value="AC">AC</option>
				    <option value="AL">AL</option>
				    <option value="AP">AP</option>
				    <option value="AM">AM</option>
				    <option value="BA">BA</option>
				    <option value="CE">CE</option>
				    <option value="DF">DF</option>
				    <option value="ES">ES</option>
				    <option value="GO">GO</option>
				    <option value="MA">MA</option>
				    <option value="MS">MS</option>
				    <option value="MT">MT</option>
				    <option value="MG">MG</option>
				    <option value="PA">PA</option>
				    <option value="PB">PB</option>
				    <option value="PR">PR</option>
				    <option value="PE">PE</option>
				    <option value="PI">PI</option>
				    <option value="RJ">RJ</option>
				    <option value="RN">RN</option>
				    <option value="RS">RS</option>
				    <option value="RO">RO</option>
				    <option value="RR">RR</option>
				    <option value="SC">SC</option>
				    <option value="SP">SP</option>
				    <option value="SE">SE</option>
				    <option value="TO">TO</option>
				</select>
            	</div>
            	-->
            <div class="form-group col-md-2">
            		<label for="nome">Estado</label>
                    <input type="text" class="form-control" id="estado" name="estado" required maxlength="2" placeholder="Estado">
            	</div>
    
              <div class="form-group col-md-4">
            		<label for="nome">CEP</label>
                    <input type="text" class="form-control" id="cep" name="cep" required maxlength="9" OnKeyPress="formatar('#####-###', this)" placeholder="CEP">
            	</div>
            </div>       
            
             
            <div class="row">
          	  <div class="form-group col-md-6">
            		<label for="nome">Bairro</label>
                    <input type="text" class="form-control" name="bairro" id="bairro" required maxlength="100" placeholder="Bairro">
            	</div>
                 <div class="form-group col-md-6">
            		<label for="nome">Logradouro</label>
                    <input type="text" class="form-control" name="logradouro" id="logradouro" required maxlength="100" placeholder="Logradouro">
            	</div>
            </div>
           	
           	<div class="row">

            	<div class="form-group col-md-8">
            		<label for="nome">Complemento</label>
                    <input type="text" class="form-control" name="complemento" id="complemento" required maxlength="100" placeholder="Complemento">
            	</div>
            	
            	  <div class="form-group col-md-4">
            		<label for="nome">Numero</label>
                    <input type="text" class="form-control" name="numero" id="numero" required maxlength="100" placeholder="Numero">
            	</div>
            </div>
            
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="fone">Telefone/Celular</label>
                    <input type="tel" class="form-control" name="fone" id="fone" maxlength="15" pattern="(?:\(\d{2}\)|\d{2})[- ]?\d{5}[- ]?\d{4}" placeholder="opcional; celular com ddd no formato (99) 99999-9999">
                </div>

                <div class="form-group col-md-6">
                    <label for="email">E-Mail</label>
                    <input type="email" class="form-control" name="email" id="email" required maxlength="60" placeholder="email obrigatório" data-error="Por favor, informe um e-mail correto." >
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12" align="center">
                    <button type="submit" class="btn btn-primary" name="command" value="CriarCliente">Salvar</button>
                    <a href="login.jsp" class="btn btn-default">Já sou cadastrado</a>
                </div>
            </div>
        </form>
    </div>
    
    	
    
    
              <c:import url="_CODIGOS/rodape.jsp"/> 
          
          
        </div><!-- /.row -->
 
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="_JS/popper.min.js"></script>
    <script src="_JS/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="_JS/holder.min.js"></script>

  </body>
</html>
