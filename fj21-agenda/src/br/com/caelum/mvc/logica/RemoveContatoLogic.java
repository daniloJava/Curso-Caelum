package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica{
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		Long id = Long.parseLong(req.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		Connection connection = (Connection) req.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection );
		dao.exclui(contato);
		
		System.out.println("Excluindo conato....");
		

		
		return "mvc?logica=ListaContatosLogic";
	}

}
