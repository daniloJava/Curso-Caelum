package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogic implements Logica{
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.getId();
		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection );
		
		dao.atualiza(contato);
		
		return "mvc?logica=AlteraContatosLogic";
	}

}
