<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<table >
		<tr>
		
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for(Contato contato : contatos){
			%>
			<tr>
			<td>  <%=contato.getNome() %>  </td>
			<td>  <%=contato.getEmail() %>  </td>
			<td>  <%=contato.getEndereco() %>  </td>
			<td>  <%=contato.getDataNascimento().getTime() %>  </td>
			<tr>
			<%
		}
		 %>
	
	</table>
	<br><br><a href="http://localhost:8080/fj21-agenda/adiciona-contato.jsp">Voltar</a>
	<br><a href="http://localhost:8080/fj21-agenda/menu.html">Voltar menu</a>
</body>
</html>