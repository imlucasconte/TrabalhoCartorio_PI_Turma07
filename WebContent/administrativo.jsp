<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!DOCTYPE html>
  <HTML lang="pt-br">

<head>
	    <title>Plataforma Administradora - Papiro Cartorio</title>
		<meta charset="utf-8">
		<c:import url="_CODIGOS/head.jsp"/>
	    <link href="_ADM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="_ADM/css/simple-sidebar.css" rel="stylesheet">
</head>
        <body>
         <c:import  url="_CODIGOS/header.jsp"/>  

        <div  id="wrapper">		
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       <div style="padding-top: 220px;  height: 40%;"class="col-12 user-img">
						<img src="_IMAGENS/face.png" alt="..." class="rounded-circle">
						<p align=center;> "Bem vindo(a) ${cliente.nome }" <p>
					</div>
                    </a>
                </li>
                <li>
                    <a href="_ADM/dashboard.jsp">Relatorio</a>
                </li>
                <li>
                    <a href="chatadm.jsp">Chatbot</a>
                </li>
                <li>
                    <a href="#">Overview</a>
                </li>
                <li>
                    <a href="_ADM/login.jsp">Login</a>
                </li>
            </ul>
        </div>

        <!-- Page Content -->
        <div   id="page-content-wrapper">
            <div style="padding-top:42px; class="container-fluid">
	                <a  href="#menu-toggle" class="btn btn-secondary btn btn-dark" id="menu-toggle">Botão Menu Administrativo</a>
            </div>
            
            <!-- Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabel">Excluir Cliente</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir este cliente?
                        </div>
                        <div class="modal-footer">
                            <form action="controller.do" method="post">
                                <input type="hidden" name="id" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="command" value="ExcluirCliente">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
		
            <!-- Container Principal -->
            <div id="main" class="container">
                <form action="controller.do" method="post">
                    <div id="top" class="row">
                        <div class="col-md-3">
                            <h2>Clientes</h2>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group h2">
                                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Clientes (deixe vazio para trazer todos)">
                                <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" name="command" value="ListarClientesBuscar">
                    <span class="glyphicon glyphicon-search"> Listar Clientes</span>
                                </button>
                                </span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <a href="cadastrar.jsp" class="btn btn-primary pull-right h2">Novo Cliente</a>
                        </div>
                    </div>
                </form>
                
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Cidade</th>
                                    <th>UF</th>
                                    <th>Bairro</th>
                                    <th>Logradouro</th>
                                    <th>Numero</th>
                                    <th>Complemento</th>
                                    <th>CEP</th>
                                    <th>Telefone</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
          					<c:forEach var="cliente" items="${lista }">
                                       <tr>
                                            <td>
                                               ${cliente.id }
                                            </td>
                                            <td>
                                                ${cliente.nome }
                                            </td>
                                            <td>
                                                ${cliente.cidade }
                                            </td>
                                            <td>
                                                ${cliente.estado }
                                            </td>
                                            <td>
                                               ${cliente.bairro }
                                            </td>
                                            <td>
                                               ${cliente.logradouro }
                                            </td>
                                            <td>
                                               ${cliente.numero }
                                            </td>
                                            <td>
                                               ${cliente.complemento }
                                            </td>
                                            <td>
                                               ${cliente.cep}
                                            </td>
                                             <td>
                                               ${cliente.fone }
                                            </td>
                                            <td class="actions">
                                                <a class="btn btn-success btn-xs" href="controller.do?command=VisualizarCliente&id=${cliente.id }">Visualizar</a>
                                                <a class="btn btn-warning btn-xs" href="controller.do?command=EditarCliente&id=${cliente.id }">Editar</a>
                                                <button id="btn${cliente.id }%>" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete-modal" data-cliente="${cliente.id }">Excluir</button>
                                            </td>
                                        </tr>             
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>

                </c:if>
                <!-- /#bottom -->
            </div>
        </div>
    </div>
<!-- FOOTER -->
      <footer style="text-align: center; padding-top: 350px;" class="container" >
        <a href="#"><span class="float-right botaosite">TOPO</span></a>
        <p>&copy; 2017-2018 PAPIRO, Inc. &middot; <a  href="#">Todos os direitos Resevados</a> &middot;</p>
      </footer> 

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="_JS/bootstrap.min.js"></script>

    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
            <script src="_JS/jquery.min.js"></script>
            <script src="_JS/bootstrap.min.js"></script>
            <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('cliente');
                    $("#id_excluir").val(recipient);
                });
            </script>
        </body>
     </html>