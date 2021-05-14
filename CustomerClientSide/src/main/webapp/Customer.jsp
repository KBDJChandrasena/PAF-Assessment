<%@page import="com.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Customer.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Customer Management</h1>
				<form id="formItem" name="formItem">
					Name: <input id="CusName" name="CusName" type="text"
						class="form-control form-control-sm"> <br> 
					Email:
					<input id="CusEmail" name="CusEmail" type="text"
						class="form-control form-control-sm"> <br> 
						Address: 
						<input id="CusAdress" name="CusAdress" type="text"
						class="form-control form-control-sm"> <br> 
						Contact Number: 
						<input id="CusPhone" name="CusPhone" type="text"
						class="form-control form-control-sm"> <br> 
						Postal Code: 
						<input id="PostalCode" name="PostalCode" type="text"
						class="form-control form-control-sm"> <br>
						
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
						<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
						customer itemObj = new customer();
						out.print(itemObj.readItems());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>