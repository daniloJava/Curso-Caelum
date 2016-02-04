package br.com.caelum.agenda.filtro;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class FiltroTempoDeExecucao implements javax.servlet.Filter{
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		long tempoInicial = System.currentTimeMillis();
		chain.doFilter(request, response);
		
		long tempoFinal = System.currentTimeMillis();
		
		String url = ((HttpServletRequest) request).getRequestURI();
		String parametros = ((HttpServletRequest) request).getParameter("logica");
		System.out.println("Tempo da requisicao de "+ url + "?logica=" + parametros + "demorou (ms)"
				+ (tempoFinal - tempoInicial));
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
