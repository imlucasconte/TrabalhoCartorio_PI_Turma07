package Controller;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Service.RecebeService;
	@WebServlet(name = "ServeletConv", urlPatterns = { "/Go" }, initParams = { @WebInitParam(name = "sala", value = "") })
	public class ServletConv extends HttpServlet {
			
		  @Override
		   protected void doGet(HttpServletRequest request, HttpServletResponse response)
		         throws ServletException, IOException {
		      processRequest(request, response);
		   }

		   @Override
		   protected void doPost(HttpServletRequest request, HttpServletResponse response)
		         throws ServletException, IOException {
		      processRequest(request, response);
		   }

		   @Override
		   public String getServletInfo() {
		      return "Short description";
		   }
		   
	   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {

	      request.setCharacterEncoding("UTF-8");
	      String msg = request.getParameter("msg");
	      String sala = (String) getServletContext().getAttribute("sala");
	      if (sala == null) {
	         HttpSession session = request.getSession();
	         String nome = (String) session.getAttribute("nome");
	         String color = (String) session.getAttribute("color");
	         sala = "Bem vindo ao chat, faça sua pergunta" + "<span style=\"color:" + color + ";font-size:20px" + "\">" + nome
	               + "</span>" + "<br>";
	      }
	      if ((msg != null) && (msg.trim().length() > 0)) {
	         HttpSession session = request.getSession();
	         String nome = (String) session.getAttribute("nome");
	         Date data = new Date();
	         SimpleDateFormat hora_format = new SimpleDateFormat("HH:mm");
	         String mostra_hora = hora_format.format(data);
	         sala += nome + "</span>" + ": " + msg + "<br/>"+mostra_hora+"<br/>";
	      }
	      
	      if(msg == "OI") {
	    	  sala = "oi";
	    	  
	      }
	      getServletContext().setAttribute("sala", sala);
	      
	      response.sendRedirect("contato.jsp");
	   }
	}