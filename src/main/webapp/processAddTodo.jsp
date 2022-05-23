<%@page import="dto.Todo"%>
<%@page import="dao.TodoRepository"%>
<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String task = request.getParameter("task");

Todo todo = new Todo(task);

TodoRepository repository = TodoRepository.getInstance(); // 동일한 객체 사용
repository.addTodo(todo);

response.sendRedirect("todolist.jsp");
%>