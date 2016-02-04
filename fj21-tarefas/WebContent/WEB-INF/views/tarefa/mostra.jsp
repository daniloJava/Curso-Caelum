<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="resources/css/jquery.css" rel="stylesheet">
 	<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/jquery-ui.js"></script>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Alterar tarefa - ${tarefa.id}</h3>
  <form action="alteraTarefa" method="post">

    <input type="hidden" name="id" value="${tarefa.id}" />
  
    Descrição:<br />
    <textarea name="descricao" cols="100" rows="5">
      ${tarefa.descricao}
    </textarea>
    <br />      

    Finalizado? <input type="checkbox" name="finalizado" 
      value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />      

    Data de finalização: <br />
    
      <caelum:campoData id="dataFinalizacao" />
    <br />
  	
    <input type="submit" value="Alterar"/>
  </form>
</body>
</html>