<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session" />
<!-- dao.ProductRepository 클래스를 여기서 repository라는 이름으로 쓰겠다. session은 범위. 죽을때까지 하나의 session으로 보겠다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<%
	//productRepository repository = new ProductRepository();
	//useBean 없는 버전. 아래와 같음
	List<Product> products = repository.getAllProducts();
	for (Product product: products) {
		out.println(product +"<br><br>");
		// toString 재정의 돼있으면 .toString 생략 가능
	}
	%>
</body>
</html>