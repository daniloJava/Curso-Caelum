<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<h1>Altera contatos</h1>
	<form action="adicionaContato">
      Nome: <input type="text" name="nome" Value="${contato.nome }"/><br />
      E-mail: <input type="text" name="email" Value= ${contato.email }/><br />
      Endereço: <input type="text" name="endereco" Value= ${contato.endereco }/><br />
      Data Nascimento: <caelum:campoData id="dataNascimento" /><br />
    
    
      <input type="submit" value="Alterar" />
   
    </form>
	
	
	
	
	<br><br><a href="http://localhost:8080/fj21-agenda/adiciona-contato.jsp">Voltar</a>
	<br><a href="http://localhost:8080/fj21-agenda/menu.html">Voltar menu</a>
	
	<c:import url="rodape.jsp" />
	
</body>
</html>