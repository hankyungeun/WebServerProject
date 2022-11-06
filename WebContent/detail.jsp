<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
	<title>Detail</title>
	<script type="text/javascript">
		function addToCart(){
			if (confirm("상품을 장바구니에 추가히겠습니까?")) {
				document.addForm.submit();
			} else {
				document.addForm.reset();
			}
		}
	</script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumboron">
		<div class="container">
			<h1 class="idsplay-3"><br>Detail<br></h1>
			<h6></h6>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			<img src="c:/upload/<%=book.getFilename() %>"
			style="width : 80%"></div>
			<div class="col-md-6">
			<h3><%=book.getName() %></h3>		<!-- 이름 -->
			<h6>SKU:<small class="text-muted"><font style="vertical-align: inherit;"><%=book.getBookId() %></font>	<!-- 시리얼 -->
			<p>
			<h4>$<%=book.getUnitPrice() %></h4>	<!-- 가격 -->
				
					
					<p><form name="addForm" action="./addCart.jsp?id=<%=book.getBookId() %>"
						method="post">
					<p><a href="#" class="btn btn-outline-dark" style="width:200px;"
					onclick="addToCart()">Add to Cart &raquo;</a>
					<a href="./home.jsp" class="btn btn-outline-secondary">Back &raquo;</a>
					<p><a href="./cart.jsp" class="btn btn-primary" style= "width:325px;">Buy Now &raquo;</a>
					<br>
					<br>
					<h4>PRODUCT INFO</h4>
					<p><%=book.getDescription() %>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
