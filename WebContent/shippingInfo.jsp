<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Shipping Info</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<div class="text-center">
			<h2><br>Shipping Information
<br><br></h3>
		</div>
		<hr>
	</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">NAME</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" required autofocus/><br>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">DATE</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" required autofocus/><br>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">LOCATION</label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" required autofocus/><br>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Zip Code</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" required autofocus/><br>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">ADDRESS</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" required autofocus/><br><br><br>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
						class="btn btn-outline-secondary" role="button"> back </a>
					<input type="submit" class="btn btn-primary" value="submit" />
				</div>
			</div>
		</form>
	</div>
	<hr>
	<%@ include file = "footer.jsp" %>
</body>
</html>