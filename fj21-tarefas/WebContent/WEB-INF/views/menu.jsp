<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Página inicial da Lista de Tarefas</h2>
    <p>Bem vindo, ${usuarioLogado.login}</p> 
    <a href="listaTarefas">Clique aqui</a> para acessar a 
    lista de tarefas
    <br>
    <a href="logout">Sair do sistema</a>
  </body>
</html>