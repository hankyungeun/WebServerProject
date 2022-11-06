<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>order completed</title>
</head>
<body>
	<%
		String shipping_cartId="";
		String shipping_name="";
		String shipping_shippingDate="";
		String shipping_country="";
		String shipping_zipCode="";
		String shipping_addressName="";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i = 0; i< cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				
			}
		}
		%>
		<jsp : include page="menu.jsp" />
		<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<div class="text-center">
			<h2><br>Order Completed<br><br></h3>
		</div>
		<hr>
	</div>
	</div>
		<div class="container">
		<div class="text-center ">
			<h2 class="alert alert-danger">Thank you for your order.</h2>
			</div>
			<p> The order will be delivered on the <%	out.println(shipping_shippingDate); %>!
			<p> Order Number : <% out.println(shipping_cartId); %>
		</div>
		<div class="container">
			<p> <a href="./products.jsp" class="btn btn-secondary"> &laquo; Products Page</a>
		</div>
		<hr>
	<%@ include file = "footer.jsp" %>
	</body>
</html>
<%
	session.invalidate();
	
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
		