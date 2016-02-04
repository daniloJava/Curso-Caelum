package br.com.caelum.agenda.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ExcluiContatoServelt extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Contato contato = new Contato();
		String valorID = request.getParameter("id");
		ContatoDao dao = new ContatoDao();
		contato.setId(Long.parseLong(valorID));
		dao.exclui(contato);
		RequestDispatcher rd= request.getRequestDispatcher("lista-contatos.jsp");
		rd.forward(request, response);
		
	}
}
