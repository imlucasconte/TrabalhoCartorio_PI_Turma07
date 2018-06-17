package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletPassagem", urlPatterns = {"/Passagem"})
public class ServletPassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException { processRequest(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException { processRequest(request, response);
	}
	
	@Override
	public String getServletInfo() {
	return "Short description"; 	
	}
	protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
	String nome = request.getParameter("nome");
	String target = "login.jsp";
	
	if ((nome != null) && nome.trim().length() > 0) {
	HttpSession session = request.getSession(true);
	session.setAttribute("nome", nome);
	target = "Go";
	}
	response.sendRedirect(target);
	}

}
