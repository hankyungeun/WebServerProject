<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Products</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<div class="text-center">
			<h2><br>Products<br><br></h3>
		</div>
		<hr>
	</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfBooks.size(); i++) {
							Book book = listOfBooks.get(i);
			%>
			<div class ="col-md-4">
			<img src="c:/upload/<%=book.getFilename() %>"
			style="width : 200px; height :200px; ">
			<p>
				<p><a href="./detail.jsp?id=<%=book.getBookId()%>"
				class="btn btn-outline-secondary" role="button">view more &raquo;></a>
			<p><br>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>