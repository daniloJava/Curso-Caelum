<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp" />	
	Contato ${param.nome } Adicionado com sucesso.


		<br><br><a href='http://localhost:8080/fj21-agenda/adiciona-contato.jsp'>Voltar</a>
       <br><a href='http://localhost:8080/fj21-agenda/menu.html'>Voltar menu</a>
       <br>
         <c:import url="rodape.jsp" />
</body>
</html>