package br.com.caelum.agenda.filtro;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import com.sun.net.httpserver.Filter.Chain;

import br.com.caelum.agenda.ConnectionFactory;

@WebFilter("/*")
public class FiltroConexao implements javax.servlet.Filter{
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}@Override
	public void doFilter(ServletRequest request, ServletResponse responte,
			FilterChain chain) throws IOException, ServletException {
		try {
			Connection connection = new ConnectionFactory().getConnection();
			
			//pendurando a connection na requisição
			request.setAttribute("conexao", connection);
			
			chain.doFilter(request, responte);
			
			connection.close();
			
			
		} catch (SQLException e) {
			 throw new ServletException(e);
		}

		
		
	}@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
