<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>Home</title>
</head>
<body>
	<%!String greeting = "Welcome to web shopping mall";
	String tagline = "<br>Order Now!<br><br>";%>

<%@ include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="alert alert-dismissible alert-primary">
			<h1 class="display-1" style="color:white;" >
			<p class="text-secondary">
			<div class="row" align="center">
				<font style="vertical-align: inherit;">
					<font style="vertical-align: inherit;">
						<%=greeting%></font></font></p>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%></h3>
		</div>
		<hr>
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
	<%@ include file = "footer.jsp" %>
	</div>
</body>
</html>