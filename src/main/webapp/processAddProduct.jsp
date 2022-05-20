<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 한글 안 깨지게
request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));

Product newProduct = new Product(productId, name, unitPrice);

ProductRepository repository = ProductRepository.getInstance(); // 동일한 객체 사용
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>