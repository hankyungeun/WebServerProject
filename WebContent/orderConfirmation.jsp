<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i= 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];
	String n = thisCookie.getName();
	if (n.equals("Shipping_cartId"))
		shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
	if (n.equals("Shipping_name"))
		shipping_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
	if (n.equals("Shipping_shippingDate"))
		shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
	if (n.equals("Shipping_country"))
		shipping_country = URLDecoder.decode((thisCookie.getValue()),"utf-8");
	if (n.equals("Shipping_zipCode"))
		shipping_zipCode = URLDecoder.decode((thisCookie.getValue()),"utf-8");
	if (n.equals("Shipping_addressName"))
		shipping_addressName = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
		<div class="text-center">
			<h2><br>order information<br><br></h3>
		</div>
		<hr>
	</div>
	</div>
	
	<div class="container col-8 alert-info">
		<div class="text-center ">
			<h1>receipt</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
					<br>
					&nbsp;&nbsp;name : <%
						out.println(shipping_name);
					%><br>
					&nbsp;&nbsp;zip code : <%
						out.println(shipping_zipCode);
					%><br>
					&nbsp;&nbsp;address : <%
						out.println(shipping_addressName);
					%>(<%
						out.println(shipping_country);
					%>) <br>
			</div>
			<div class="col-4" align="right">
				<h5 style="color:gray;">&nbsp;&nbsp;<em>date : <%
					out.println(shipping_shippingDate);
				%>&nbsp;</em></h5><br>
			</div>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">product</th>
					<th class="text-center">#</th>
					<th class="text-center">price</th>
					<th class="text-center">소계</th>
				</tr>
				<%
					int sum = 0;
									ArrayList<Book> cartList=(ArrayList<Book>)
									session.getAttribute("cartlist");
									if(cartList == null)
										cartList = new ArrayList<Book>();
									for(int i = 0; i < cartList.size(); i++) {
										Book book = cartList.get(i);
										int total = book.getUnitPrice()*book.getQuantity();
										sum = sum + total;
				%>
				<tr>
					<td class="text-center"><em><%=book.getName() %></em></td>
					<td class="text-center"><%=book.getQuantity() %></td>
					<td class="text-center"><%=book.getUnitPrice() %>₩</td>
					<td class="text-center"><%=total %>₩</td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>total : </strong></td>
					<td class="text-center text-danger"><strong><%=sum %>₩
					</strong></td>
					
				</tr> 
				</table>
				
		</div>
	</div>
	<div class="row">
			<table width="50px;">
			<p>
			<p>
				<tr>
				<td align="left"><a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"
					class="btn btn-outline-danger" role="button">back</a></td>
				<td align="right"><a href="./thankCustomer.jsp" class="btn btn-outline-primary"
					role="button">OK</a></td>
					</tr>
			</table>
		</div>
		<hr>
	<%@ include file = "footer.jsp" %>
</body>
</html>