<%@page import="dto.Todo"%>
<%@page import="dao.TodoRepository"%>
<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
long id = Long.parseLong(request.getParameter("id"));

TodoRepository repository = TodoRepository.getInstance(); // 동일한 객체 사용
repository.remove(id);

response.sendRedirect("todolist.jsp");
%>