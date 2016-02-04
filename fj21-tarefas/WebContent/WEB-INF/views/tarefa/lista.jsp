<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
    function finalizaAgora(id) {
      $.post("finalizaTarefa", {'id' : id}, function() {
        // selecionando o elemento html através da 
        // ID e alterando o HTML dele 
        $("#tarefa_"+id).html("Finalizado");
      });
    }
  </script>


<a href="novaTarefa">Criar nova tarefa</a> 

  <br /> <br />        

  <table>
  <tr>
    <th>Id</th>
    <th>Descrição</th>
    <th>Finalizado?</th>
    <th>Data de finalização</th>
    <th>Remover</th>
    <th>Alterar</th>
  </tr>
  <c:forEach items="${tarefas}" var="tarefa">
   	
      <td>${tarefa.id}</td>
      <td>${tarefa.descricao}</td>
       <c:if test="${tarefa.finalizado eq true}">
        <td>Finalizado</td>
      </c:if>
      <c:if test="${tarefa.finalizado eq false}">
 		 <td id="tarefa_${tarefa.id}">
      		<a href="#" onClick="finalizaAgora(${tarefa.id})">
     		 Finaliza agora!
      		</a>
      </td>
      </c:if>
    
 

      <td>
        <caelum:campoData id="dataNascimento" /><br />
      </td>
      <td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
      <td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
    </tr>
  </c:forEach>
  </table>
</body>
</html>