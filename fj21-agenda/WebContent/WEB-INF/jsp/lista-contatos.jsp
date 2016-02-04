<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/jquery.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.altera{
	background-color: #aaee88;
}

.altera1{
	background-color: #2E8B57;
}

</style>
<body>
<!-- cria o DAO -->
<c:import url="cabecalho2.jsp" />



<table border="1">
  <!-- percorre contatos montando as linhas da tabela -->
  <tr class="altera1">
  	  <td>Nome</td>
      <td>E-mail</td>
      <td>Endereco</td>
      <td>Data de Nascimento</td>
      <td>Excluir<td>
      <td>Alterar</td>
  </tr>
  
  <c:forEach var="contato" items="${contatos}" varStatus="id">
  	
    <tr ${id.count % 2 == 0 ? 'class="altera"' : '' } >
    
      <td>${contato.nome}</td>
      
      <td>
      	<c:if test="${not empty contato.email}">
      		<a href="mailto:${contato.email}">${contato.email}</a>
      	</c:if>
      	<c:if test="${empty contato.email}">
      		E-mail não informado
      	</c:if>
      	
      </td>
      <td>${contato.endereco}</td>
      <td><fmt:formatDate value="${contato.dataNascimento.time}"
    pattern="dd/MM/yyyy" /></td>
    <td> <a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Exclui</a></td>
    <td> <a href="mvc?logica=AlteraContatoLogic&id=${contato}">Altera</a></td>
    </tr>
  </c:forEach>
</table>
	
	<br>
	
	<br><br><a href="http://localhost:8080/fj21-agenda/adiciona-contato.jsp">Voltar</a>
	<br><a href="http://localhost:8080/fj21-agenda/menu.html">Voltar menu</a>
	
	<c:import url="rodape2.jsp" />
</body>
</html>