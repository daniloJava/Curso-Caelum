package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.Instant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/oi")
public class OIMundo extends HttpServlet{
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*DateFormat hora = DateFormat.getTimeInstance();
		Calendar data = Calendar.getInstance(); 
		Date date = data.getTime();
		*/
		Instant agora = Instant.now();
		PrintWriter out = response.getWriter();

	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Primeira Servlet</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Oi mundo Servlet!</h1>" + agora);
		//out.println("<h1>Oi mundo Servlet!</h1>" + hora.format(date));
	    out.println("</body>");
	    out.println("</html>");

	}

}
