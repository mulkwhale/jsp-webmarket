<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<!-- session은 서버측에 저장 -->
<jsp:useBean id="repository" class="dao.ProductRepository" scope="application" />
<!-- dao.ProductRepository 클래스를 여기서 repository라는 이름으로 쓰겠다. session은 범위. 죽을때까지 하나의 session으로 보겠다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%
	//productRepository repository = new ProductRepository();
	//useBean 없는 버전. 아래와 같음
	List<Product> products = repository.getAllProducts();
	for (Product product: products) {
		out.println(product +"<br><br>");
		// toString 재정의 돼있으면 .toString 생략 가능
	}
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>