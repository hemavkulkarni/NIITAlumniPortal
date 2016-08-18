
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

/* #wrapper */
/* { */
/* position:relative; */
/* width:900px; */
/* left:400px; */
/* top:-500px; */
/* } */
</style>
</head>


<body>
	<%@include file="header.jsp"%><br>
	<br>
	<div class="container-fluid" id="fullwrapper">
		<div class="rows">
			<div class="col-md-7">
				<div id="logo-container"></div>
				<div class="col-sm-8 col-md-10 col-md-offset-1">
					<div class="form-group input-group">

						<center>
							<h3>New What's New?</h3>
						</center>
					</div>

					<form:form method="POST" action="WhatNewSave" class="login-form"
						commandName="wnew">
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input class="form-control" type="text" path='title'
								placeholder="What New Title" />
							<form:errors path="title" cssStyle="color: #ff0000;" />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-comment"></i></span>
							<form:textarea path="desc" class="form-control"
								placeholder="What New Description" rows="20" />
							<form:errors path="desc" cssStyle="color: #ff0000;" />
						</div>

						<div class="form-group input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input path="validDate" id="datepicker" class="form-control"
								placeholder="Valid Date(MM/DD/YYYY format)" />
							<script>
								$(function() {
									$("#datepicker").datepicker();
								});
							</script>
						</div>

						<div class="form-group">
							<button class="btn btn-def btn-block">ADD WHAT NEW</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
